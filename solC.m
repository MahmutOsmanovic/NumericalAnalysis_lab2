clc; clear;

dimensions = 3;
AmountOfPoints = 6;

ans = calcAB(dimensions,AmountOfPoints);
disp(ans);

[X,Y,Z] = sphere(25);
mySphere = surf(X,Y,Z);
axis equal
shading interp
mySphere.FaceAlpha = 0.25;

hold on

for i=1:AmountOfPoints
    toDraw = ans(:,i).';
    plot3(toDraw(1,1), toDraw(1,2), toDraw(1,3), '-o','Color','r','markersize',10,'MarkerFaceColor','#E23D3D'); 
end

xlabel('x'); ylabel('y'); zlabel('z');

line([-0.6334 0.6334], [-0.7473 0.7473], [-0.2008 0.2008], 'LineWidth', 1, 'Color', [1 0 0])
line([0.6713 -0.6713], [-0.4017 0.4017], [-0.6228 0.6228], 'LineWidth', 1, 'Color', [1 0 0])
line([0.3848 -0.3848], [-0.5293 0.5293], [0.7562 -0.7562], 'LineWidth', 1, 'Color', [1 0 0])
line([-1 1], [0 0], [0 0], 'LineWidth', 1, 'Color', [0 0 0])
line([0 0], [-1 1], [0 0], 'LineWidth', 1, 'Color', [0 0 0])
line([0 0], [0 0], [-1 1], 'LineWidth', 1, 'Color', [0 0 0])

grid off
