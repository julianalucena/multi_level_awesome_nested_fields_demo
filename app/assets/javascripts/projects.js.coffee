# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ($) ->
  resourcesOptions = {
    itemSelector: ".resource",
    containerSelector: ".resources-container",
    addSelector: ".resource-add",
    removeSelector: ".resource-remove",
    itemTemplateSelector: ".resource.template",
    newItemIndex: "new_resource_item"
  }

  $(".project-form").nestedFields({
    itemSelector: ".task",
    containerSelector: ".tasks-container",
    addSelector: ".task-add",
    removeSelector: ".task-remove",
    itemTemplateSelector: ".task.template",
    newItemIndex: "new_task_item",
    afterInsert: (item) ->
      # Applies nestedFields to this task's resources
      item.find(".nested-level-2").nestedFields(resourcesOptions)
      # Inserts a resource item
      item.find(".nested-level-2").nestedFields("insert")
  })

  # Applies nestedFields to all projects on page
  $(".project-form").find(".nested-level-2").nestedFields(resourcesOptions)
