class TestsController < Simpler::Controller

  def index
    render 'index'
  end

  def create

  end

  def show
    @test = set_params
  end

end
