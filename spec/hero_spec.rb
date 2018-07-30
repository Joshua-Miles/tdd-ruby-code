require_relative '../config/environment.rb'
describe("Hero") do

    let(:hero) do 
        Hero.new([ 
            {
                name: 'Super Strength',
                coolness: 3
            },
            {
                name:'Flight',
                coolness: 5
            },
            {
                name: 'Lighting Blast',
                coolness: 10
            }
        ])
    end

    it "returns it's coolest power" do
        expect( hero.coolest_ability ) .to eq ({
            name: 'Lighting Blast',
            coolness: 10
        } )
    end

end