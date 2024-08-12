
clear all;
close all;


FamilyRelationship = cell(8, 1);


FamilyRelationship{1} = fun_Ch3_Child('Child','Parent1','Parent2');
FamilyRelationship{2} = fun_Ch3_Child('Oscar','Karen','Frank');
FamilyRelationship{3} = fun_Ch3_Child('Mary','Karen','Frank');
FamilyRelationship{4} = fun_Ch3_Child('Chris','Nind','Oscar');
FamilyRelationship{5} = fun_Ch3_Child('Henry','Anne','Oscar');
FamilyRelationship{6} = fun_Ch3_Child('Isolde','Anne','Oscar');
FamilyRelationship{7} = fun_Ch3_Child('Clyde','Mary','OscarB');
FamilyRelationship{8} = fun_Ch3_Child('Somsak','Vishnu','Malee');


Yes_No1 = fun_Ch3_IsChild('Mary','Karen','Frank', FamilyRelationship);
Yes_No2 = fun_Ch3_IsChild('Kaoe','Anne','Oscar', FamilyRelationship); 
Yes_No3 = fun_Ch3_IsChild('Somsak','Vishnu','Malee', FamilyRelationship);


disp(['Is Mary the child of Frank and Karen? ' Yes_No1]);
disp(['Is Kaoe the child of Anne and Oscar? ' Yes_No2]);
disp(['Is Somsak the child of Vishnu and Malee? ' Yes_No3]);


for i = 1:numel(FamilyRelationship)
    disp(FamilyRelationship{i});
end


function relationshipString = fun_Ch3_Child(child, parent1, parent2)
    
    relationshipString = sprintf('%s\t%s\t%s', child, parent1, parent2);
end


function Yes_No = fun_Ch3_IsChild(child, parent1, parent2, familyRelationships)
  
    Yes_No = 'No';
    
   
    for i = 1:numel(familyRelationships)
      
        currentRelationship = familyRelationships{i};
        
       
        parts = strsplit(currentRelationship, '\t');
        
       % string compare = strcmp
        if strcmp(parts{1}, child) && ...
           ((strcmp(parts{2}, parent1) && strcmp(parts{3}, parent2)) || ...
            (strcmp(parts{2}, parent2) && strcmp(parts{3}, parent1)))
           
            Yes_No = 'Yes';
            return;
        end
    end
end
