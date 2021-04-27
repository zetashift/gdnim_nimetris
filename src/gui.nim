import gdnim, godotapi / [center_container, grid_container, texture_rect]

const cellBgOne = initColor(0.1, 0.1, 0.1)
const cellBgTwo = initColor(0.0, 0.0, 0.0, 0)

gdnim Gui of CenterContainer:
  var
    grid: GridContainer ## This is our actual playing field
    next: GridContainer

  signal button_pressed()

  unload:
    save()

  reload:
    self.grid = self.findNode("Grid") as GridContainer
    self.next = self.findNode("NextShape") as GridContainer

    print("Hello from GDNim!!!")

    self.initCells(self.grid, 200)
    self.clearCells(self.grid, cellBgOne)
    self.clearCells(self.next, cellBgTwo)

  proc initCells(grid: GridContainer, n: int) =
    ## Initialize all the cells in a grid
    var numCells = grid.getChildCount()
    while numCells < n:
      grid.addChild(grid.getChild(0).duplicate())
      numCells += 1
 
  proc clearCells(grid: GridContainer, color: Color) =
    ## Color the cells in a grid with `color`
    for cell in grid.getChildren():
      cell.asObject(CanvasItem).modulate = color

  proc onAboutButtonDown*() {.gdExport.} = discard

  proc onPauseButtonDown*() {.gdExport.} = discard

  proc onNewGameButtonDown*() {.gdExport.} =
    print("Hello!")

  proc onToggleMusicButtonDown*() {.gdExport.} = discard
