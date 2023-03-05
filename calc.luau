function arrow(n1,n2,arrowcount) --// arrow notation that uses arguments instead of arrows
    
    --[[
        arrow(3,3,4) looks like this in arrow notation: 3↑↑↑↑3
        n1 is the first number n2 is the last number and arrowcount is the amount of arrows
    ]]
    
    for i = 1,arrowcount,1 do --// this is the thing that calculates everything
        n1 = n1^n2 --// runs as long as you have arrows.
        task.wait() --// wait to avoid crashing
    end
    
    return n1 --// once the loop finishes n1 will be returned
end

function main() --// i made a main function to avoid accidentally starting the program
    
    local arrowc = 4 --// start with 4 arrows

    for i = 1,64,1 do --// run 64 times
        arrowc = arrow(3,3,arrowc) --// arrowc is actually just Gn. I named it arrowc to avoid confusion
        print(arrowc) --// print the calculated result
    end
    
end

main() --// start the program
