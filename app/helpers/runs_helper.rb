module RunsHelper
  def single_run_gold_per_min(run)
    if run.time_spent != 0
      (run.gold_earned / run.time_spent)
    end
  end

  def single_run_gold_per_hour(run)
    (single_run_gold_per_min run) * 60
  end

  def all_gold
    @sum = 0
    Run.all.each do |run|
      @sum = @sum + run.gold_earned
    end

    @sum
  end

  def all_gold_earned_array
    @golds_earned = Array.new
    Run.select(:gold_earned).each do |run|
      @golds_earned.push(run.gold_earned)
    end
    @golds_earned
  end

  def all_minutes_array
    @minute = Array.new
    Run.select(:time_spent).each do |run|
      @minute.push(run.time_spent)
    end
    @minute
  end

  def all_hours
    @sum = 0
    Run.all.each do |run|
      @sum = @sum + run.time_spent
    end

    (@sum / 60.0)
  end
end
