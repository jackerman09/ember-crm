App.LeadsNewController = Ember.Controller.extend
	actions:
		createLead: ->
			lead = @store.createRecord 'lead', @get('fields')
			lead.save().then =>
				@transitionToRoute 'lead', lead