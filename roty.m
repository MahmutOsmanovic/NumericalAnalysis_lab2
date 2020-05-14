function [rotationMatrixY] = roty(beta)
rotationMatrixY = [cosd(beta) 0 sind(beta); 
                   0 1 0;
                   -sin(beta) 0 cos(beta)];
end

