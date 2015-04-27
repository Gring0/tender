initWidgets = () ->
  $('.chosen-input').chosen
    width: '100%'

  $('textarea').elastic()

  $('#discussion_voting_notify_at').datetimepicker
    language: 'ru'
    pickTime: false
    defaultDate: -> $(@).data('date')

  $('[data-spy="affix"]').affix
    offset:
      top: 1

  $('[rel="visibility-link"]').click ->
    $(@.dataset.target).toggleClass('in')

  window.onscroll = ->
    $('[data-spy="affix"]').each (i) -> setParentWidth(@)

  window.onresize = ->
    $('[data-spy="affix"]').each (i) -> setParentWidth(@)

  $('.new-comment-placeholder').on 'click', () ->
    $('.discussion-variant-new-comment').addClass('hidden')
    $('.new-comment-placeholder').removeClass('hidden')
    $(@).addClass('hidden')
    $(@).siblings('.discussion-variant-new-comment').removeClass('hidden').find('textarea').focus()

  $('[name="comment[description]"]').keyup () ->
    $counterEl = $(@).parents('form').find('.chars-counter')
    charsLeft = 140 - $(@).val().length
    $counterEl.addClass('text-danger') if charsLeft < 0
    $counterEl.removeClass('text-danger') if charsLeft >= 0
    $counterEl.text charsLeft

  $('form.new_comment').submit () ->
    $(@).find('.chars-counter').text 140

  $(".dicussion-variant-ideas-list").sortable
    group: ".dragable-list"
    handle: '.dragable-handle'
    tolerance: 10
    distance: 10
    onDrop: (item, container, _super) ->
      url  = $(item).parents('.discussion-variant').data('source')
      $list = $(item).parents('.dicussion-variant-ideas-list')
      ids = $list.find('.discussion-idea').map () -> $(@).data('idea-id')
      data =
        variant:
          idea_ids: ids.get()
      yaCounter25653140.reachGoal('variant_manual_dnd', document.domain)
      $.ajax
        url: url
        type: 'PUT'
        data: data
      _super(item, container)

  $(".discussion-ideas-list").sortable
    group: ".dragable-list"
    handle: '.dragable-handle'
    tolerance: 10
    distance: 10
    drop: false

  if $('.has-error .help-inline').length > 0
    $('.has-error .help-inline').siblings('input', 'textarea').focus()

setParentWidth = (el) -> el.style.width = "#{el.parentElement.offsetWidth - 30}px"

$(document).on 'click', '.js-set-focus', (e) ->
  document.getElementById(@.dataset.target).focus()
  false

$(document).on 'page:update', () -> initWidgets()

$(document).on 'click', '.js-show-full-list', (e) ->
  $(@).parents('ul').find('li').removeClass('hidden')
  $(@).addClass 'hidden'
  $(@).siblings('a').removeClass 'hidden'
  e.preventDefault()

$(document).on 'click', '.js-hide-full-list', (e) ->
  list = $(@).parents('ul').find('li')
  listLength = list.length
  list.slice(5, listLength - 1).addClass('hidden')
  $(@).addClass 'hidden'
  $(@).siblings('a').removeClass 'hidden'
  e.preventDefault()
