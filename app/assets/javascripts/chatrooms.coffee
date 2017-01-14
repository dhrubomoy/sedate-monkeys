$(document).ready ->
  window.location.hash = '#room'

$(document).on "turbolinks:load", ->
  window.location.hash = "#room";
  simplemde = new SimpleMDE(
    element: document.getElementById('message-submit-btn'),
    toolbar: ["bold", "italic", "heading", "|",
    "heading-1", "heading-2", "heading-3", "|",
    "quote", "code", "strikethrough", "|",
    "unordered-list", "ordered-list", "clean-block", "|",
    "link", "image", "preview", "|",
    "fullscreen"
    ],
  )