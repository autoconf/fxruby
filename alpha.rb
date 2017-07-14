require 'fox16'

include Fox

class LabelExample < FXMainWindow
  def initialize(app)
    super(app, "Labels", :width => 300, :height => 50)

    label = FXLabel.new(self, "Left-justified text", :opts => JUSTIFY_LEFT)

  end
  
  def create
    super
    show(PLACEMENT_SCREEN)
  end
end

if __FILE__ == $0
  FXApp.new do |app|
    LabelExample.new(app)
    app.create
    app.run
  end
end
