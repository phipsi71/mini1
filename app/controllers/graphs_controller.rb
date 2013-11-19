class GraphsController < ApplicationController





  def index

    @active_question = Question.active.first

    @answer_count = Inquiry.get_values(@active_question)


    # @absolutes_mehr = 

    @chart2 = LazyHighCharts::HighChart.new('column') do |f|
      f.title({:text=>"Evaluation of : #{@active_question.poke}" }) 
      #f.series(:name=>'No', :data=> [ @answer_count[:f_answers] ] ) 
      f.series(name: '', :data=> [ @answer_count[:t_answers],  @answer_count[:f_answers]  ])

      ### Options for Bar
      f.options[:chart][:defaultSeriesType] = "column"
      f.plot_options({ :series=>{:stacking=>"normal"} })



      #@chart2 = LazyHighCharts::HighChart.new('column') do |f|
      #  f.series(:name=>'John',:data=> [3, 20, 3, 5, 4, 10, 12 ])
      #  f.series(:name=>'Jane',:data=> [1, 3, 4, 3, 3, 5, 4, -4 ] ) 
      #  f.title({:text=>"example test title from controller"})

      ### Options for Bar
      #  f.options[:chart][:defaultSeriesType] = "bar"
      #  f.plot_options({:series=>{:stacking=>"normal"}})

      ## or options for column
      #f.options[:chart][:defaultSeriesType] = "column"
      #f.plot_options({:column=>{:stacking=>"percent"}})
    end
  end
end
