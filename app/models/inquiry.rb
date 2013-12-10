class Inquiry < ActiveRecord::Base


	#validates :answer, presence: true
	validates_uniqueness_of :question_id, :scope => [:session_id], :message => 'has already been answered'


	# Inquiry.where("answer = 't'").where("question_id = ?", @question.id).count

	def self.get_values(active_question_id)
		# active_question_id = Question.active.first.id
		tot = Inquiry.where("question_id = ?", active_question_id).count
		t = Inquiry.where("answer = 't'").where("question_id = ?", active_question_id).count
		f = Inquiry.where("answer = 'f'").where("question_id = ?", active_question_id).count
		e = Inquiry.where("answer = ''").where("question_id = ?",  active_question_id).count
		{ total: tot, t_answers: t, f_answers: f, e_answers: e } # this is the return value : a hash
	end

	def self.exists?(session_id, active_question_id)
		if Inquiry.where("session_id = ? AND question_id = ?", session_id, active_question_id).exists?
			true
		else 
			false
		end
	end



	# This defines a class method :
	# def self.method_name
	# end

	# This defines an instance method :
	# def method_name
	# end


	private
    # Use callbacks to share common setup or constraints between actions.

	

		

end
