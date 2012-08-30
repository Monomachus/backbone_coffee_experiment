describe "Restaurant Form", ->
    jasmine.getFixtures().fixturesPath = 'javascript/spec/fixtures'

    beforeEach ->
        loadFixtures 'restaurant_form.html'
        @invisible_form = $('#restaurant-form')
        @restaurant_form = new Gourmet.Views.RestaurantForm
            el: @invisible_form
            collection: new Gourmet.Collections.RestaurantsCollection

    it "should be defined", ->
       expect(Gourmet.Views.RestaurantForm).toBeDefined()

    it "should have the right element", ->
       expect(@restaurant_form.$el).toEqual @invisible_form

    it "should have the right collection", ->
       expect(@restaurant_form.collection).toEqual (new Gourmet.Collections.RestaurantsCollection)