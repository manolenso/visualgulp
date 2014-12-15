

#$ ->
#  $ '#draggable'
#  .draggable connecToSortable: '#droppable', helper: 'clone', revert: 'invalid',
#appendTo: 'body'
#  $ '#droppable'
#  .sortable()


$ ->
  $ "#pipe_dest_right"
  .draggable containment: "#draggable", snap: true

$ ->
  $ "#pipe_dest_left"
  .draggable containment: "#draggable", snap: true

$ ->
  $ "#dest_right"
  .draggable containment: "#draggable", snap: true

$ ->
  $ "#dest_left"
  .draggable containment: "#draggable", snap: true

$ ->
  $ "#te_top"
  .draggable containment: "#draggable", snap: true

$ ->
  $ "#te_bottom"
  .draggable containment: "#draggable", snap: true

$ ->
  $ "#stream"
  .draggable containment: "#draggable", snap: true

$ ->
  $ "#stream_bottom"
  .draggable containment: "#draggable", snap: true

$ ->
  $ "#src"
  .draggable containment: "#draggable", snap: true

$ ->
  $ "#pipe"
  .draggable containment: "#draggable", snap: true

$ ->
  $ "#crux"
  .draggable containment: "#draggable", snap: true

$ ->
  $ "#crux_right"
  .draggable containment: "#draggable", snap: true

$ ->
  $ "#crux_left"
  .draggable containment: "#draggable", snap: true

$ ->
  $ "#pipe_dest"
  .draggable containment: "#draggable", snap: true

$ ->
  $ "#pipe_dest_right"
  .draggable containment: "#draggable", snap: true

$ ->
  $ "#pipe_enter_right"
  .draggable containment: "#draggable", snap: true

$ ->
  $ "#pipe_horiz"
  .draggable containment: "#draggable", snap: true

$ ->
  $ "#serial"
  .draggable containment: "#draggable", snap: true

$ ->
  $ "#stream"
  .draggable containment: "#draggable", snap: true

$ ->
  $ "#pipe_right"
  .draggable containment: "#draggable", snap: true

$ ->
  $ "#pipe_left_bottom"
  .draggable containment: "#draggable", snap: true

$ ->
  $ "#pipe_right_bottom"
  .draggable containment: "#draggable", snap: true

$ ->
  $ "#dest"
  .draggable containment: "#draggable", snap: true
