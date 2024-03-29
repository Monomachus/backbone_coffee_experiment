class Gourmet.Models.Restaurant extends Backbone.Model
    
    defaults:
        name: null
        postcode: null
        rating: null

    validate:
        name:
            required: true
        postcode:
            required: true
        rating:
            required: true
            type:     'number'
            min:      1
            max:      5
    
class Gourmet.Collections.RestaurantsCollection extends Backbone.Collection

    model: Gourmet.Models.Restaurant