require_relative "../spec_helper"

describe "Sealion Model" do
  let(:first_sealion) { Sealion.new(name: "Finn", favourite_dance: "Tango")}
  let(:another_sealion) { Sealion.new(name: "Rosa", favourite_dance: "just wiggling")}

  it "saves sealion to database" do
    first_sealion.save
    another_sealion.save
    saved_sealion=Sealion.find_by(name: "Finn")
    expect(saved_sealion.favourite_dance).to eq("Tango")
  end
end
