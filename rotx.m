function [rotationMatrixX] = rotx(alpha)
rotationMatrixX = [1 0 0; 
                   0 cosd(alpha) -sind(alpha);
                   0 sind(alpha) cosd(alpha)];
end

