App.LeadController = Ember.ObjectController.extend
	actions:
		# only saves if the data has been changed
		saveChanges: -> @get('model').save() if @get('model.isDirty')
		delete: ->
			@get('model').destroyRecord().then =>
				@transitionToRoute 'leads'

	showUnsavedMessage: ( ->
		@get('isDirty') and !@get('isSaving')
	).property('isDirty', 'isSaving')

	isEditing: false