require 'spec_helper'

describe Ausgabe do
  before  do @ausgabe = Ausgabe.new(ausgabedatum: Date::current,
						 			rueckgabedatum: Date::tomorrow,
						 			kommentar: "tolle Karte, tun wir jetzt mal weg")
  end

  subject { @ausgabe }

  it { should respond_to(:ausgabedatum) }
  it { should respond_to(:rueckgabedatum) }
  it { should respond_to(:kommentar) }
end
