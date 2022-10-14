import Graphics.UI.GLUT
import Graphics.Rendering.OpenGL

main = do
    (progName,_) <-getArgsAndInitialize
    createAWindow "A Polygon"
    mainLoop

createAWindow windowName = do
    createWindow windowName
    displayCallback $= displayPoints

displayPoints = do
    clear [ColorBuffer]
    currentColor $= Color4 0 0 1 0
    renderPrimitive Polygon
        $mapM_ (\(x, y, z)->vertex$Vertex3 x y z) myPoints
    flush

myPoints :: [(GLfloat,GLfloat,GLfloat)]
myPoints =
    [(-0.25, 0.25, 0.0)
    ,(0.25, 0.25, 0.0)
    ,(0.25, -0.25, 0.0)
    ,((-0.25), -0.25, 0.0)]