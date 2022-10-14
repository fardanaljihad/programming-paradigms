import Graphics.UI.GLUT
import Graphics.Rendering.OpenGL

main = do
    (progName,_) <- getArgsAndInitialize
    createAWindow "Empat Buah Titik"
    mainLoop

createAWindow windowName = do
    createWindow windowName
    displayCallback $= displayPoints

myPoints :: [(GLfloat, GLfloat, GLfloat)]
myPoints = 
    [(-0.25, 0.25, 0.0)
    ,(0.25, 0.25, 0.0)
    ,(0.25, -0.25, 0.0)
    ,((-0.25), -0.25, 0.0)]

displayPoints = do
    clear [ColorBuffer]
    renderPrimitive Points
        $mapM_ (\(x, y, z)->vertex$Vertex3 x y z) myPoints
    flush