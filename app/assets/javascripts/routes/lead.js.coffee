App.LeadRoute = Ember.Route.extend
	model: (params) -> @store.find 'lead', params.id
	activate: -> @controllerFor('leads').set 'showHideDetails', true
	deactivate: -> @controllerFor('leads').set 'showHideDetails', false