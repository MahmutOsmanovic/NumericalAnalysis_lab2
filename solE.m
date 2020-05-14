clc; clear;

dimensions = 3;
AmountOfPoints = 6;

ans = calcAB(dimensions,AmountOfPoints);
disp(ans)
inverse = [ans(1,3) ans(2,3) ans(3,3); ans(1,4) ans(2,4) ans(3,4); ans(1,6) ans(2,6) ans(3,6)];
% observe that "inverse" is an orthogonal matrix, the corrosponding
% negativly signed points a unit away form orthogonal axis. Recall that the
% inverse matrix of a orthogonal matrix is its transpose.
e1 = inverse*ans(:,3);
corr_e1 = -e1;
% or corr_e1 = inverse*ans(:,2); any matrix A you choose will send 
% A(-x) = -(Ax), thus, one can just change the sign of e1. 
e2 = inverse*ans(:,4);
corr_e2 = -e2;
e3 = inverse*ans(:,6);
corr_e3 = -e3;
e = [corr_e1 e1 corr_e2 e2 corr_e3 e3];
disp(e)

[X,Y,Z] = sphere(25);
mySphere = surf(X,Y,Z);
axis equal
shading interp
mySphere.FaceAlpha = 0.25;

hold on

for i=1:AmountOfPoints
    toDraw = ans(:,i).';
    resultToDraw = e(:,i);
    plot3(toDraw(1,1), toDraw(1,2), toDraw(1,3), '-o','Color','r','markersize',10,'MarkerFaceColor','#E23D3D'); 
    plot3(resultToDraw(1,1), resultToDraw(2,1), resultToDraw(3,1), '-o','Color','y','markersize',10,'MarkerFaceColor','#F9F22F');
end

xlabel('x'); ylabel('y'); zlabel('z');

line([ans(1,1) ans(1,4)], [ans(2,1) ans(2,4)], [ans(3,1) ans(3,4)], 'LineWidth', 1, 'Color', [1 0 0])
line([ans(1,2) ans(1,3)], [ans(2,2) ans(2,3)], [ans(3,2) ans(3,3)], 'LineWidth', 1, 'Color', [1 0 0])
line([ans(1,5) ans(1,6)], [ans(2,5) ans(2,6)], [ans(3,5) ans(3,6)], 'LineWidth', 1, 'Color', [1 0 0])
line([e(1,1) e(1,2)], [0 0], [0 0], 'LineWidth', 1, 'Color', [1 1 0])
line([0 0], [e(2,3) e(2,4)], [0 0], 'LineWidth', 1, 'Color', [1 1 0])
line([0 0], [0 0], [e(3,5) e(3,6)], 'LineWidth', 1, 'Color', [1 1 0])

grid on

% there are two other way to do this, either follow the instructions in the
% PDF or just 3d rotations in combination with some projections.
