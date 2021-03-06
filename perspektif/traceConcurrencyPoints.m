function concurrencyPoints = traceConcurrencyPoints( boundaryPoints, cornerPoints )
   
variance = 0;

sizeOfBoundaryPoints = size(boundaryPoints); 
sizeOfCornerPoints = size(cornerPoints); 
numberOfConcurrencyPoints = 0;

numberOfToleratedPoints = 0;

    for i=1:sizeOfBoundaryPoints(1)
        for j=1:sizeOfCornerPoints(1)
            if boundaryPoints(i,1) == cornerPoints(j,1) & boundaryPoints(i,2) == cornerPoints(j,2)
                numberOfConcurrencyPoints = numberOfConcurrencyPoints + 1;
                concurrencyPoints (numberOfConcurrencyPoints,1) = cornerPoints(j,1);
                concurrencyPoints (numberOfConcurrencyPoints,2) = cornerPoints(j,2);                
            end    
            
            
            if (abs(boundaryPoints(i,1) - cornerPoints(j,1)) + abs(boundaryPoints(i,2) - cornerPoints(j,2))) < variance 
           
                numberOfConcurrencyPoints = numberOfConcurrencyPoints + 1;
                                numberOfToleratedPoints = numberOfToleratedPoints +1;
                
                concurrencyPoints (numberOfConcurrencyPoints,1) = cornerPoints(j,1);
                concurrencyPoints (numberOfConcurrencyPoints,2) = cornerPoints(j,2);     
           
            end
            
        end
    end   
    
    disp(numberOfToleratedPoints);
end
