function corner_4_coordinates = Get4Points( corner_coordinates )

variance = 10;   
numberOfPoints = 0; 


sizeOfCornerPoints = size(corner_coordinates); 

delta_x = variance; delta_y = 1;   

numberOfPoint1 = 0; numberOfPoint2 = 0; numberOfPoint3 = 0; numberOfPoint4 = 0;

        for i=1:sizeOfCornerPoints(1)            
            if (i+1) < sizeOfCornerPoints(1)
                
                if (numberOfPoints < 4) & ((delta_x + delta_y) > variance )
                    numberOfPoints = numberOfPoints+1;
                    designatedPoint(numberOfPoints,:) = corner_coordinates(i,:);
                end
                    
                delta_x = abs(designatedPoint(numberOfPoints,1) - corner_coordinates(i+1,1));    % difference of the 2 x values
                delta_y = abs(designatedPoint(numberOfPoints,2) - corner_coordinates(i+1,2));    % difference of the 2 y values
                                               
            end            
        end
        
        corner_4_coordinates = designatedPoint;
end

