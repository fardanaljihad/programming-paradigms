import Graphics.UI.GLUT
import Graphics.Rendering.OpenGL

main = do
    (progName,_) <-getArgsAndInitialize
    createAWindow "A Simple House"
    mainLoop

createAWindow windowName = do
    createWindow windowName
    displayCallback $= displayPoints

displayPoints = do
    clear [ColorBuffer]
    currentColor $= Color4 1 1 1 1
    renderPrimitive Lines
        $mapM_ (\(x, y, z)->vertex$Vertex3 x y z) myPoints
    flush

myPoints :: [(GLfloat,GLfloat,GLfloat)]
myPoints =
    [(-0.55, 0.25, 0.0) ,(0.55, 0.25, 0.0) -- Tembok rumah
    ,(0.40, -0.25, 0.0) ,((-0.40), -0.25, 0.0)
    ,(-0.40, 0.25, 0.0) ,((-0.40), -0.25, 0.0)
    ,(0.40, 0.25, 0.0) ,(0.40, -0.25, 0.0)
    ,(-0.55, 0.25, 0.0) ,(-0.40, 0.55, 0.0) -- Atap rumah
    ,(0.55, 0.25, 0.0), (0.40, 0.55, 0.0)
    ,(0.40, 0.55, 0.0) ,((-0.40), 0.55, 0.0)
    ,(-0.10, 0.08, 0.0), (0.10, 0.08, 0.0) -- Pintu rumah
    ,(-0.10, -0.25, 0.0), (-0.10, 0.08, 0.0)
    ,(0.10, -0.25, 0.0), (0.10, 0.08, 0.0)
    ,(-0.08, -0.05, 0.0), (-0.05, -0.05, 0.0)
    ,(-0.32, 0.08, 0.0), (-0.18, 0.08, 0.0) -- Jendela kiri
    ,(-0.32, -0.04, 0.0), (-0.18, -0.04, 0.0)
    ,(-0.32, 0.08, 0.0), (-0.32, -0.04, 0.0)
    ,(-0.18, 0.08, 0.0), (-0.18, -0.04, 0.0)
    ,(0.32, 0.08, 0.0), (0.18, 0.08, 0.0) -- Jendela kanan
    ,(0.32, -0.04, 0.0), (0.18, -0.04, 0.0)
    ,(0.32, 0.08, 0.0), (0.32, -0.04, 0.0)
    ,(0.18, 0.08, 0.0), (0.18, -0.04, 0.0)
    ,(-0.10, -0.25, 0.0), (-0.25, -1.0, 0.0) -- Jalan
    ,(0.10, -0.25, 0.0), (0.25, -1.0, 0.0)]