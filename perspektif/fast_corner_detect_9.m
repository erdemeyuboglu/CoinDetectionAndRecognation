function coords = fast_corner_detect_9(im, threshold)								
	sz = size(im);																
	xsize=sz(2);																
	ysize=sz(1);																
	cs = zeros(5000, 2);														
	nc = 0;																		
	for x = 4 : xsize - 3														
		for y = 4 : ysize -3													
			cb = im(y,x) + threshold;											
			c_b= im(y,x) - threshold;											
            if im(y+0,x+3) > cb
                if im(y+-3,x+1) > cb
                    if im(y+2,x+2) > cb
                        if im(y+-2,x+-2) > cb
                            if im(y+-1,x+3) > cb
                                if im(y+1,x+3) > cb
                                    if im(y+-2,x+2) > cb
                                        if im(y+-3,x+0) > cb
                                            if im(y+-3,x+-1) > cb
                                            elseif im(y+-3,x+-1) < c_b
                                                continue;
                                            else
                                                if im(y+3,x+0) > cb
                                                    if im(y+3,x+1) > cb
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            end
                                        elseif im(y+-3,x+0) < c_b
                                            continue;
                                        else
                                            if im(y+3,x+-1) > cb
                                                if im(y+3,x+0) > cb
                                                    if im(y+3,x+1) > cb
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        end
                                    elseif im(y+-2,x+2) < c_b
                                        continue;
                                    else
                                        if im(y+3,x+-1) > cb
                                            if im(y+1,x+-3) > cb
                                                if im(y+2,x+-2) > cb
                                                    if im(y+3,x+0) > cb
                                                        if im(y+3,x+1) > cb
                                                        elseif im(y+3,x+1) < c_b
                                                            continue;
                                                        else
                                                            if im(y+-1,x+-3) > cb
                                                                if im(y+-3,x+-1) > cb
                                                                else
                                                                    continue;
                                                                end
                                                            else
                                                                continue;
                                                            end
                                                        end
                                                    elseif im(y+3,x+0) < c_b
                                                        continue;
                                                    else
                                                        if im(y+-1,x+-3) > cb
                                                            if im(y+-3,x+-1) > cb
                                                                if im(y+0,x+-3) > cb
                                                                else
                                                                    continue;
                                                                end
                                                            else
                                                                continue;
                                                            end
                                                        else
                                                            continue;
                                                        end
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    end
                                elseif im(y+1,x+3) < c_b
                                    continue;
                                else
                                    if im(y+0,x+-3) > cb
                                        if im(y+-1,x+-3) > cb
                                            if im(y+-2,x+2) > cb
                                                if im(y+-3,x+0) > cb
                                                elseif im(y+-3,x+0) < c_b
                                                    continue;
                                                else
                                                    if im(y+3,x+-1) > cb
                                                        if im(y+1,x+-3) > cb
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                end
                                            elseif im(y+-2,x+2) < c_b
                                                continue;
                                            else
                                                if im(y+3,x+-1) > cb
                                                    if im(y+1,x+-3) > cb
                                                        if im(y+2,x+-2) > cb
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                end
                            elseif im(y+-1,x+3) < c_b
                                continue;
                            else
                                if im(y+0,x+-3) > cb
                                    if im(y+2,x+-2) > cb
                                        if im(y+1,x+-3) > cb
                                            if im(y+3,x+-1) > cb
                                                if im(y+3,x+1) > cb
                                                    if im(y+1,x+3) > cb
                                                    elseif im(y+1,x+3) < c_b
                                                        continue;
                                                    else
                                                        if im(y+-1,x+-3) > cb
                                                        else
                                                            continue;
                                                        end
                                                    end
                                                elseif im(y+3,x+1) < c_b
                                                    continue;
                                                else
                                                    if im(y+-1,x+-3) > cb
                                                    else
                                                        continue;
                                                    end
                                                end
                                            elseif im(y+3,x+-1) < c_b
                                                continue;
                                            else
                                                if im(y+-2,x+2) > cb
                                                    if im(y+-1,x+-3) > cb
                                                        if im(y+-3,x+-1) > cb
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            end
                        elseif im(y+-2,x+-2) < c_b
                            if im(y+3,x+-1) > cb
                                if im(y+-1,x+3) > cb
                                    if im(y+1,x+3) > cb
                                        if im(y+-2,x+2) > cb
                                            if im(y+3,x+1) > cb
                                            else
                                                continue;
                                            end
                                        elseif im(y+-2,x+2) < c_b
                                            continue;
                                        else
                                            if im(y+1,x+-3) > cb
                                            else
                                                continue;
                                            end
                                        end
                                    else
                                        continue;
                                    end
                                elseif im(y+-1,x+3) < c_b
                                    continue;
                                else
                                    if im(y+0,x+-3) > cb
                                        if im(y+3,x+0) > cb
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                end
                            elseif im(y+3,x+-1) < c_b
                                if im(y+-3,x+-1) > cb
                                    if im(y+3,x+1) > cb
                                        if im(y+-2,x+2) > cb
                                            if im(y+-3,x+0) > cb
                                                if im(y+1,x+3) > cb
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                elseif im(y+-3,x+-1) < c_b
                                    if im(y+3,x+1) < c_b
                                        if im(y+-1,x+-3) < c_b
                                            if im(y+0,x+-3) < c_b
                                                if im(y+1,x+-3) < c_b
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            else
                                if im(y+-3,x+0) > cb
                                    if im(y+3,x+0) > cb
                                        if im(y+-2,x+2) > cb
                                            if im(y+1,x+3) > cb
                                                if im(y+-1,x+3) > cb
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    elseif im(y+3,x+0) < c_b
                                        continue;
                                    else
                                        if im(y+-3,x+-1) > cb
                                            if im(y+-2,x+2) > cb
                                                if im(y+3,x+1) > cb
                                                    if im(y+1,x+3) > cb
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    end
                                else
                                    continue;
                                end
                            end
                        else
                            if im(y+3,x+1) > cb
                                if im(y+-1,x+3) > cb
                                    if im(y+-3,x+-1) > cb
                                        if im(y+1,x+3) > cb
                                            if im(y+-2,x+2) > cb
                                                if im(y+-3,x+0) > cb
                                                elseif im(y+-3,x+0) < c_b
                                                    continue;
                                                else
                                                    if im(y+3,x+-1) > cb
                                                    else
                                                        continue;
                                                    end
                                                end
                                            elseif im(y+-2,x+2) < c_b
                                                continue;
                                            else
                                                if im(y+1,x+-3) > cb
                                                    if im(y+3,x+-1) > cb
                                                        if im(y+3,x+0) > cb
                                                            if im(y+2,x+-2) > cb
                                                            else
                                                                continue;
                                                            end
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            end
                                        else
                                            continue;
                                        end
                                    elseif im(y+-3,x+-1) < c_b
                                        if im(y+3,x+-1) > cb
                                        else
                                            continue;
                                        end
                                    else
                                        if im(y+3,x+-1) > cb
                                            if im(y+1,x+3) > cb
                                                if im(y+-2,x+2) > cb
                                                    if im(y+3,x+0) > cb
                                                    else
                                                        continue;
                                                    end
                                                elseif im(y+-2,x+2) < c_b
                                                    continue;
                                                else
                                                    if im(y+1,x+-3) > cb
                                                        if im(y+2,x+-2) > cb
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                end
                                            else
                                                continue;
                                            end
                                        elseif im(y+3,x+-1) < c_b
                                            continue;
                                        else
                                            if im(y+3,x+0) > cb
                                                if im(y+-3,x+0) > cb
                                                    if im(y+-2,x+2) > cb
                                                        if im(y+1,x+3) > cb
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        end
                                    end
                                elseif im(y+-1,x+3) < c_b
                                    continue;
                                else
                                    if im(y+0,x+-3) > cb
                                        if im(y+2,x+-2) > cb
                                            if im(y+1,x+-3) > cb
                                                if im(y+3,x+-1) > cb
                                                    if im(y+1,x+3) > cb
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                end
                            else
                                continue;
                            end
                        end
                    elseif im(y+2,x+2) < c_b
                        if im(y+-2,x+-2) > cb
                            if im(y+0,x+-3) > cb
                                if im(y+-1,x+-3) > cb
                                    if im(y+-3,x+0) > cb
                                        if im(y+-2,x+2) > cb
                                            if im(y+-1,x+3) > cb
                                                if im(y+-3,x+-1) > cb
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            elseif im(y+0,x+-3) < c_b
                                if im(y+-1,x+-3) > cb
                                    if im(y+1,x+3) > cb
                                    else
                                        continue;
                                    end
                                elseif im(y+-1,x+-3) < c_b
                                    if im(y+1,x+3) < c_b
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            else
                                if im(y+1,x+3) > cb
                                    if im(y+-1,x+-3) > cb
                                        if im(y+-1,x+3) > cb
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            end
                        elseif im(y+-2,x+-2) < c_b
                            if im(y+3,x+0) < c_b
                                if im(y+-1,x+-3) < c_b
                                    if im(y+0,x+-3) < c_b
                                        if im(y+3,x+-1) < c_b
                                            if im(y+3,x+1) < c_b
                                                if im(y+1,x+-3) < c_b
                                                    if im(y+2,x+-2) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            else
                                continue;
                            end
                        else
                            if im(y+1,x+3) < c_b
                                if im(y+-1,x+-3) < c_b
                                    if im(y+3,x+-1) < c_b
                                        if im(y+3,x+1) < c_b
                                            if im(y+3,x+0) < c_b
                                                if im(y+-2,x+2) > cb
                                                    if im(y+0,x+-3) < c_b
                                                        if im(y+2,x+-2) < c_b
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            else
                                continue;
                            end
                        end
                    else
                        if im(y+-1,x+-3) > cb
                            if im(y+1,x+3) > cb
                                if im(y+-2,x+-2) > cb
                                    if im(y+-2,x+2) > cb
                                        if im(y+-3,x+0) > cb
                                            if im(y+-1,x+3) > cb
                                                if im(y+-3,x+-1) > cb
                                                else
                                                    continue;
                                                end
                                            elseif im(y+-1,x+3) < c_b
                                                continue;
                                            else
                                                if im(y+2,x+-2) > cb
                                                    if im(y+0,x+-3) > cb
                                                        if im(y+1,x+-3) > cb
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            end
                                        elseif im(y+-3,x+0) < c_b
                                            continue;
                                        else
                                            if im(y+3,x+1) > cb
                                                if im(y+-3,x+-1) > cb
                                                    if im(y+0,x+-3) > cb
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        end
                                    elseif im(y+-2,x+2) < c_b
                                        continue;
                                    else
                                        if im(y+3,x+-1) > cb
                                            if im(y+2,x+-2) > cb
                                                if im(y+0,x+-3) > cb
                                                    if im(y+1,x+-3) > cb
                                                        if im(y+-3,x+0) > cb
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    end
                                else
                                    continue;
                                end
                            elseif im(y+1,x+3) < c_b
                                if im(y+0,x+-3) > cb
                                    if im(y+-3,x+-1) > cb
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            else
                                if im(y+0,x+-3) > cb
                                    if im(y+-3,x+-1) > cb
                                        if im(y+-2,x+2) > cb
                                            if im(y+-2,x+-2) > cb
                                                if im(y+-3,x+0) > cb
                                                    if im(y+-1,x+3) > cb
                                                    elseif im(y+-1,x+3) < c_b
                                                        continue;
                                                    else
                                                        if im(y+2,x+-2) > cb
                                                        else
                                                            continue;
                                                        end
                                                    end
                                                elseif im(y+-3,x+0) < c_b
                                                    continue;
                                                else
                                                    if im(y+3,x+1) > cb
                                                        if im(y+2,x+-2) > cb
                                                            if im(y+1,x+-3) > cb
                                                            else
                                                                continue;
                                                            end
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                end
                                            else
                                                continue;
                                            end
                                        elseif im(y+-2,x+2) < c_b
                                            continue;
                                        else
                                            if im(y+3,x+-1) > cb
                                                if im(y+2,x+-2) > cb
                                                    if im(y+-2,x+-2) > cb
                                                        if im(y+1,x+-3) > cb
                                                            if im(y+-3,x+0) > cb
                                                            elseif im(y+-3,x+0) < c_b
                                                                continue;
                                                            else
                                                                if im(y+3,x+1) > cb
                                                                else
                                                                    continue;
                                                                end
                                                            end
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            end
                        elseif im(y+-1,x+-3) < c_b
                            if im(y+-3,x+-1) < c_b
                                if im(y+3,x+1) < c_b
                                    if im(y+0,x+-3) < c_b
                                        if im(y+3,x+0) < c_b
                                            if im(y+2,x+-2) < c_b
                                                if im(y+-2,x+-2) < c_b
                                                    if im(y+1,x+-3) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            else
                                continue;
                            end
                        else
                            continue;
                        end
                    end
                elseif im(y+-3,x+1) < c_b
                    if im(y+2,x+-2) > cb
                        if im(y+1,x+-3) > cb
                            if im(y+-1,x+3) > cb
                                if im(y+3,x+0) > cb
                                    if im(y+1,x+3) > cb
                                        if im(y+3,x+1) > cb
                                            if im(y+2,x+2) > cb
                                                if im(y+3,x+-1) > cb
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    elseif im(y+1,x+3) < c_b
                                        continue;
                                    else
                                        if im(y+-2,x+-2) > cb
                                            if im(y+0,x+-3) > cb
                                                if im(y+2,x+2) > cb
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    end
                                else
                                    continue;
                                end
                            elseif im(y+-1,x+3) < c_b
                                if im(y+0,x+-3) > cb
                                    if im(y+3,x+1) > cb
                                        if im(y+3,x+0) > cb
                                            if im(y+1,x+3) > cb
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            else
                                if im(y+0,x+-3) > cb
                                    if im(y+3,x+0) > cb
                                        if im(y+3,x+-1) > cb
                                            if im(y+2,x+2) > cb
                                                if im(y+1,x+3) > cb
                                                    if im(y+3,x+1) > cb
                                                    else
                                                        continue;
                                                    end
                                                elseif im(y+1,x+3) < c_b
                                                    continue;
                                                else
                                                    if im(y+-2,x+-2) > cb
                                                    else
                                                        continue;
                                                    end
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            end
                        elseif im(y+1,x+-3) < c_b
                            if im(y+-1,x+3) > cb
                                if im(y+-2,x+2) > cb
                                else
                                    continue;
                                end
                            elseif im(y+-1,x+3) < c_b
                                if im(y+-2,x+-2) < c_b
                                else
                                    continue;
                                end
                            else
                                continue;
                            end
                        else
                            if im(y+-2,x+2) > cb
                                if im(y+-1,x+-3) > cb
                                    if im(y+-3,x+0) > cb||im(y+-3,x+0) < c_b
                                        continue;
                                    else
                                        if im(y+-1,x+3) > cb
                                            if im(y+1,x+3) > cb
                                                if im(y+3,x+-1) > cb
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    end
                                elseif im(y+-1,x+-3) < c_b
                                    if im(y+3,x+0) > cb
                                        if im(y+1,x+3) > cb
                                            if im(y+3,x+-1) > cb
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    if im(y+2,x+2) > cb
                                    else
                                        continue;
                                    end
                                end
                            else
                                continue;
                            end
                        end
                    elseif im(y+2,x+-2) < c_b
                        if im(y+-1,x+-3) < c_b
                            if im(y+3,x+-1) > cb
                                if im(y+-2,x+2) < c_b
                                    if im(y+3,x+1) > cb
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            elseif im(y+3,x+-1) < c_b
                                if im(y+0,x+-3) < c_b
                                    if im(y+-2,x+-2) > cb
                                        continue;
                                    elseif im(y+-2,x+-2) < c_b
                                        if im(y+1,x+-3) < c_b
                                            if im(y+-3,x+-1) > cb
                                                continue;
                                            elseif im(y+-3,x+-1) < c_b
                                                if im(y+-3,x+0) > cb
                                                    continue;
                                                elseif im(y+-3,x+0) < c_b
                                                else
                                                    if im(y+3,x+1) < c_b
                                                    else
                                                        continue;
                                                    end
                                                end
                                            else
                                                if im(y+2,x+2) < c_b
                                                    if im(y+3,x+0) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        if im(y+1,x+3) < c_b
                                        else
                                            continue;
                                        end
                                    end
                                else
                                    continue;
                                end
                            else
                                if im(y+-2,x+2) < c_b
                                    if im(y+1,x+-3) < c_b
                                        if im(y+-2,x+-2) < c_b
                                            if im(y+0,x+-3) < c_b
                                                if im(y+-3,x+-1) < c_b
                                                    if im(y+-3,x+0) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            end
                        else
                            continue;
                        end
                    else
                        if im(y+-1,x+3) < c_b
                            if im(y+1,x+-3) < c_b
                                if im(y+-1,x+-3) < c_b
                                    if im(y+0,x+-3) < c_b
                                        if im(y+-2,x+-2) < c_b
                                            if im(y+-3,x+-1) < c_b
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            else
                                continue;
                            end
                        else
                            continue;
                        end
                    end
                else
                    if im(y+2,x+-2) > cb
                        if im(y+3,x+0) > cb
                            if im(y+-1,x+3) > cb
                                if im(y+1,x+-3) > cb
                                    if im(y+3,x+-1) > cb
                                        if im(y+1,x+3) > cb
                                            if im(y+2,x+2) > cb
                                                if im(y+3,x+1) > cb
                                                elseif im(y+3,x+1) < c_b
                                                    continue;
                                                else
                                                    if im(y+-3,x+0) > cb
                                                        if im(y+-2,x+-2) > cb
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                end
                                            elseif im(y+2,x+2) < c_b
                                                continue;
                                            else
                                                if im(y+-3,x+-1) > cb
                                                    if im(y+0,x+-3) > cb
                                                        if im(y+3,x+1) > cb
                                                            if im(y+-2,x+-2) > cb
                                                            else
                                                                continue;
                                                            end
                                                        elseif im(y+3,x+1) < c_b
                                                            continue;
                                                        else
                                                            if im(y+-3,x+0) > cb
                                                            else
                                                                continue;
                                                            end
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            end
                                        elseif im(y+1,x+3) < c_b
                                            continue;
                                        else
                                            if im(y+-2,x+-2) > cb
                                                if im(y+0,x+-3) > cb
                                                    if im(y+2,x+2) > cb
                                                        if im(y+-1,x+-3) > cb
                                                        else
                                                            continue;
                                                        end
                                                    elseif im(y+2,x+2) < c_b
                                                        continue;
                                                    else
                                                        if im(y+-3,x+-1) > cb
                                                            if im(y+-1,x+-3) > cb
                                                                if im(y+3,x+1) > cb
                                                                elseif im(y+3,x+1) < c_b
                                                                    continue;
                                                                else
                                                                    if im(y+-3,x+0) > cb
                                                                    else
                                                                        continue;
                                                                    end
                                                                end
                                                            else
                                                                continue;
                                                            end
                                                        else
                                                            continue;
                                                        end
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    if im(y+-2,x+2) > cb
                                        if im(y+1,x+3) > cb
                                            if im(y+2,x+2) > cb
                                                if im(y+3,x+-1) > cb
                                                    if im(y+3,x+1) > cb
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                end
                            elseif im(y+-1,x+3) < c_b
                                if im(y+0,x+-3) > cb
                                else
                                    continue;
                                end
                            else
                                if im(y+0,x+-3) > cb
                                    if im(y+1,x+-3) > cb
                                        if im(y+3,x+-1) > cb
                                            if im(y+2,x+2) > cb
                                                if im(y+3,x+1) > cb
                                                    if im(y+1,x+3) > cb
                                                    elseif im(y+1,x+3) < c_b
                                                        continue;
                                                    else
                                                        if im(y+-2,x+-2) > cb
                                                        else
                                                            continue;
                                                        end
                                                    end
                                                elseif im(y+3,x+1) < c_b
                                                    continue;
                                                else
                                                    if im(y+-3,x+0) > cb
                                                    else
                                                        continue;
                                                    end
                                                end
                                            elseif im(y+2,x+2) < c_b
                                                continue;
                                            else
                                                if im(y+-3,x+-1) > cb
                                                    if im(y+3,x+1) > cb
                                                        if im(y+-2,x+-2) > cb
                                                            if im(y+-1,x+-3) > cb
                                                            else
                                                                continue;
                                                            end
                                                        else
                                                            continue;
                                                        end
                                                    elseif im(y+3,x+1) < c_b
                                                        continue;
                                                    else
                                                        if im(y+-3,x+0) > cb
                                                        else
                                                            continue;
                                                        end
                                                    end
                                                else
                                                    continue;
                                                end
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            end
                        else
                            continue;
                        end
                    elseif im(y+2,x+-2) < c_b
                        if im(y+3,x+0) < c_b
                            if im(y+-2,x+-2) > cb
                                if im(y+-1,x+-3) < c_b
                                    if im(y+1,x+3) < c_b
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            elseif im(y+-2,x+-2) < c_b
                                if im(y+0,x+-3) < c_b
                                    if im(y+-3,x+-1) > cb
                                        continue;
                                    elseif im(y+-3,x+-1) < c_b
                                        if im(y+3,x+1) > cb
                                            continue;
                                        elseif im(y+3,x+1) < c_b
                                            if im(y+1,x+-3) < c_b
                                                if im(y+-1,x+-3) < c_b
                                                    if im(y+3,x+-1) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            if im(y+-3,x+0) < c_b
                                                if im(y+-1,x+-3) < c_b
                                                    if im(y+1,x+-3) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        end
                                    else
                                        if im(y+2,x+2) < c_b
                                            if im(y+-1,x+-3) < c_b
                                                if im(y+1,x+-3) < c_b
                                                    if im(y+3,x+1) < c_b
                                                        if im(y+3,x+-1) < c_b
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    end
                                else
                                    continue;
                                end
                            else
                                if im(y+1,x+3) < c_b
                                    if im(y+-1,x+-3) < c_b
                                        if im(y+0,x+-3) < c_b
                                            if im(y+3,x+1) < c_b
                                                if im(y+1,x+-3) < c_b
                                                    if im(y+3,x+-1) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            end
                        else
                            continue;
                        end
                    else
                        continue;
                    end
                end
            elseif im(y+0,x+3) < c_b
                if im(y+3,x+-1) > cb
                    if im(y+-1,x+-3) > cb
                        if im(y+-3,x+-1) > cb
                            if im(y+1,x+-3) > cb
                                if im(y+3,x+1) > cb
                                    if im(y+0,x+-3) > cb
                                        if im(y+2,x+-2) > cb
                                            if im(y+-2,x+-2) > cb
                                                if im(y+3,x+0) > cb
                                                else
                                                    continue;
                                                end
                                            elseif im(y+-2,x+-2) < c_b
                                                continue;
                                            else
                                                if im(y+1,x+3) > cb
                                                else
                                                    continue;
                                                end
                                            end
                                        elseif im(y+2,x+-2) < c_b
                                            continue;
                                        else
                                            if im(y+-1,x+3) > cb
                                            else
                                                continue;
                                            end
                                        end
                                    else
                                        continue;
                                    end
                                elseif im(y+3,x+1) < c_b
                                    if im(y+-3,x+1) > cb
                                        if im(y+0,x+-3) > cb
                                            if im(y+-2,x+-2) > cb
                                                if im(y+2,x+-2) > cb
                                                    if im(y+-3,x+0) > cb
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    elseif im(y+-3,x+1) < c_b
                                        continue;
                                    else
                                        if im(y+3,x+0) > cb
                                            if im(y+-3,x+0) > cb
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    end
                                else
                                    if im(y+-3,x+1) > cb
                                        if im(y+0,x+-3) > cb
                                            if im(y+2,x+-2) > cb
                                                if im(y+-2,x+-2) > cb
                                                    if im(y+-3,x+0) > cb
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    elseif im(y+-3,x+1) < c_b
                                        continue;
                                    else
                                        if im(y+-3,x+0) > cb
                                            if im(y+3,x+0) > cb
                                                if im(y+0,x+-3) > cb
                                                    if im(y+2,x+-2) > cb
                                                        if im(y+-2,x+-2) > cb
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    end
                                end
                            else
                                continue;
                            end
                        elseif im(y+-3,x+-1) < c_b
                            if im(y+1,x+3) > cb
                                if im(y+0,x+-3) > cb
                                    if im(y+3,x+1) > cb
                                        if im(y+1,x+-3) > cb
                                            if im(y+2,x+2) > cb
                                                if im(y+3,x+0) > cb
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            elseif im(y+1,x+3) < c_b
                                if im(y+3,x+1) > cb
                                    if im(y+2,x+2) > cb
                                        if im(y+-2,x+-2) > cb
                                            if im(y+-2,x+2) < c_b
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    elseif im(y+2,x+2) < c_b
                                        if im(y+-2,x+-2) < c_b
                                            if im(y+-1,x+3) < c_b
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                elseif im(y+3,x+1) < c_b
                                    if im(y+-1,x+3) < c_b
                                        if im(y+-2,x+2) < c_b
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    if im(y+-2,x+-2) < c_b
                                        if im(y+2,x+2) < c_b
                                            if im(y+-1,x+3) < c_b
                                                if im(y+-2,x+2) < c_b
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                end
                            else
                                if im(y+-2,x+-2) > cb
                                    if im(y+2,x+2) > cb
                                        if im(y+1,x+-3) > cb
                                            if im(y+3,x+1) > cb
                                                if im(y+-1,x+3) < c_b
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            end
                        else
                            if im(y+2,x+2) > cb
                                if im(y+-2,x+-2) > cb
                                    if im(y+0,x+-3) > cb
                                        if im(y+1,x+-3) > cb
                                            if im(y+3,x+1) > cb
                                                if im(y+3,x+0) > cb
                                                    if im(y+2,x+-2) > cb
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                elseif im(y+-2,x+-2) < c_b
                                    if im(y+1,x+3) > cb
                                    else
                                        continue;
                                    end
                                else
                                    if im(y+1,x+3) > cb
                                        if im(y+3,x+1) > cb
                                            if im(y+0,x+-3) > cb
                                                if im(y+1,x+-3) > cb
                                                    if im(y+2,x+-2) > cb
                                                        if im(y+3,x+0) > cb
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                end
                            elseif im(y+2,x+2) < c_b
                                if im(y+3,x+0) < c_b
                                    if im(y+-3,x+0) < c_b
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            else
                                continue;
                            end
                        end
                    elseif im(y+-1,x+-3) < c_b
                        if im(y+1,x+3) > cb
                            if im(y+0,x+-3) < c_b
                                if im(y+-3,x+1) < c_b
                                    if im(y+-2,x+2) < c_b
                                        if im(y+-1,x+3) < c_b
                                            if im(y+-3,x+-1) < c_b
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            else
                                continue;
                            end
                        elseif im(y+1,x+3) < c_b
                            if im(y+-3,x+0) < c_b
                                if im(y+-1,x+3) > cb
                                    continue;
                                elseif im(y+-1,x+3) < c_b
                                    if im(y+-3,x+-1) < c_b
                                        if im(y+-3,x+1) < c_b
                                            if im(y+-2,x+-2) > cb
                                                continue;
                                            elseif im(y+-2,x+-2) < c_b
                                                if im(y+-2,x+2) < c_b
                                                else
                                                    continue;
                                                end
                                            else
                                                if im(y+3,x+1) < c_b
                                                else
                                                    continue;
                                                end
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    if im(y+2,x+-2) < c_b
                                        if im(y+2,x+2) > cb||im(y+2,x+2) < c_b
                                            continue;
                                        else
                                            if im(y+3,x+1) > cb
                                            else
                                                continue;
                                            end
                                        end
                                    else
                                        continue;
                                    end
                                end
                            else
                                continue;
                            end
                        else
                            if im(y+0,x+-3) < c_b
                                if im(y+-2,x+2) < c_b
                                    if im(y+-2,x+-2) < c_b
                                        if im(y+-3,x+1) < c_b
                                            if im(y+-1,x+3) > cb
                                                continue;
                                            elseif im(y+-1,x+3) < c_b
                                                if im(y+-3,x+0) < c_b
                                                    if im(y+-3,x+-1) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                if im(y+2,x+-2) < c_b
                                                else
                                                    continue;
                                                end
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            else
                                continue;
                            end
                        end
                    else
                        if im(y+2,x+2) < c_b
                            if im(y+-2,x+-2) > cb
                                continue;
                            elseif im(y+-2,x+-2) < c_b
                                if im(y+-3,x+0) < c_b
                                    if im(y+-1,x+3) < c_b
                                        if im(y+1,x+3) < c_b
                                            if im(y+-3,x+-1) < c_b
                                                if im(y+-3,x+1) < c_b
                                                    if im(y+-2,x+2) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            else
                                if im(y+3,x+1) < c_b
                                    if im(y+-3,x+-1) > cb
                                        continue;
                                    elseif im(y+-3,x+-1) < c_b
                                        if im(y+1,x+3) < c_b
                                            if im(y+-2,x+2) < c_b
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        if im(y+3,x+0) < c_b
                                            if im(y+-3,x+1) < c_b
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    end
                                else
                                    continue;
                                end
                            end
                        else
                            continue;
                        end
                    end
                elseif im(y+3,x+-1) < c_b
                    if im(y+-2,x+2) > cb
                        if im(y+0,x+-3) > cb
                            if im(y+-1,x+3) > cb
                                if im(y+1,x+-3) > cb
                                    if im(y+-3,x+1) > cb
                                        if im(y+-2,x+-2) > cb
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            elseif im(y+-1,x+3) < c_b
                                if im(y+1,x+-3) > cb
                                    if im(y+2,x+-2) > cb
                                        if im(y+-1,x+-3) > cb
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                elseif im(y+1,x+-3) < c_b
                                    if im(y+2,x+2) < c_b
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            else
                                if im(y+2,x+-2) > cb
                                    if im(y+2,x+2) < c_b
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            end
                        elseif im(y+0,x+-3) < c_b
                            if im(y+2,x+2) > cb
                                continue;
                            elseif im(y+2,x+2) < c_b
                                if im(y+1,x+-3) < c_b
                                    if im(y+1,x+3) > cb
                                        continue;
                                    elseif im(y+1,x+3) < c_b
                                        if im(y+2,x+-2) < c_b
                                            if im(y+3,x+0) < c_b
                                                if im(y+3,x+1) < c_b
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        if im(y+-3,x+-1) < c_b
                                        else
                                            continue;
                                        end
                                    end
                                else
                                    continue;
                                end
                            else
                                if im(y+-3,x+-1) < c_b
                                else
                                    continue;
                                end
                            end
                        else
                            if im(y+-1,x+3) < c_b
                                if im(y+1,x+-3) < c_b
                                    if im(y+3,x+0) < c_b
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            else
                                continue;
                            end
                        end
                    elseif im(y+-2,x+2) < c_b
                        if im(y+1,x+3) > cb
                            if im(y+0,x+-3) < c_b
                                if im(y+-1,x+-3) < c_b
                                    if im(y+-3,x+-1) < c_b
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            else
                                continue;
                            end
                        elseif im(y+1,x+3) < c_b
                            if im(y+-1,x+3) > cb
                                continue;
                            elseif im(y+-1,x+3) < c_b
                                if im(y+-3,x+1) > cb
                                    if im(y+2,x+-2) < c_b
                                        if im(y+3,x+0) < c_b
                                            if im(y+3,x+1) < c_b
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                elseif im(y+-3,x+1) < c_b
                                    if im(y+2,x+2) > cb
                                        if im(y+-1,x+-3) < c_b
                                        else
                                            continue;
                                        end
                                    elseif im(y+2,x+2) < c_b
                                        if im(y+3,x+1) > cb
                                            continue;
                                        elseif im(y+3,x+1) < c_b
                                            if im(y+3,x+0) > cb
                                                continue;
                                            elseif im(y+3,x+0) < c_b
                                            else
                                                if im(y+-3,x+0) < c_b
                                                    if im(y+-3,x+-1) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            end
                                        else
                                            if im(y+-2,x+-2) < c_b
                                                if im(y+-3,x+0) < c_b
                                                    if im(y+-3,x+-1) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        end
                                    else
                                        if im(y+-1,x+-3) < c_b
                                            if im(y+-2,x+-2) < c_b
                                                if im(y+-3,x+0) < c_b
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    end
                                else
                                    if im(y+2,x+-2) < c_b
                                        if im(y+2,x+2) < c_b
                                            if im(y+3,x+0) < c_b
                                                if im(y+3,x+1) < c_b
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                end
                            else
                                if im(y+0,x+-3) < c_b
                                    if im(y+2,x+-2) < c_b
                                        if im(y+1,x+-3) < c_b
                                            if im(y+-3,x+-1) > cb
                                            elseif im(y+-3,x+-1) < c_b
                                                if im(y+3,x+1) > cb
                                                    continue;
                                                elseif im(y+3,x+1) < c_b
                                                    if im(y+2,x+2) > cb
                                                        continue;
                                                    elseif im(y+2,x+2) < c_b
                                                    else
                                                        if im(y+-2,x+-2) < c_b
                                                        else
                                                            continue;
                                                        end
                                                    end
                                                else
                                                    if im(y+-2,x+-2) < c_b
                                                        if im(y+-3,x+1) < c_b
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                end
                                            else
                                                if im(y+3,x+1) < c_b
                                                    if im(y+2,x+2) < c_b
                                                        if im(y+3,x+0) < c_b
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            end
                        else
                            if im(y+0,x+-3) < c_b
                                if im(y+-1,x+-3) < c_b
                                    if im(y+-2,x+-2) < c_b
                                        if im(y+-3,x+0) > cb
                                            continue;
                                        elseif im(y+-3,x+0) < c_b
                                            if im(y+-3,x+-1) < c_b
                                                if im(y+-1,x+3) > cb
                                                    continue;
                                                elseif im(y+-1,x+3) < c_b
                                                    if im(y+-3,x+1) > cb
                                                        continue;
                                                    elseif im(y+-3,x+1) < c_b
                                                    else
                                                        if im(y+2,x+2) < c_b
                                                            if im(y+1,x+-3) < c_b
                                                            else
                                                                continue;
                                                            end
                                                        else
                                                            continue;
                                                        end
                                                    end
                                                else
                                                    if im(y+1,x+-3) < c_b
                                                    else
                                                        continue;
                                                    end
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            if im(y+1,x+-3) < c_b
                                                if im(y+2,x+2) > cb
                                                    continue;
                                                elseif im(y+2,x+2) < c_b
                                                    if im(y+2,x+-2) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    if im(y+-3,x+1) < c_b
                                                        if im(y+-3,x+-1) < c_b
                                                            if im(y+3,x+0) < c_b
                                                                if im(y+2,x+-2) < c_b
                                                                else
                                                                    continue;
                                                                end
                                                            else
                                                                continue;
                                                            end
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                end
                                            else
                                                continue;
                                            end
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            else
                                continue;
                            end
                        end
                    else
                        if im(y+1,x+-3) < c_b
                            if im(y+-1,x+3) > cb
                                if im(y+0,x+-3) < c_b
                                    if im(y+1,x+3) < c_b
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            elseif im(y+-1,x+3) < c_b
                                if im(y+2,x+2) > cb
                                    continue;
                                elseif im(y+2,x+2) < c_b
                                    if im(y+2,x+-2) < c_b
                                        if im(y+3,x+0) > cb
                                            continue;
                                        elseif im(y+3,x+0) < c_b
                                            if im(y+1,x+3) > cb
                                                continue;
                                            elseif im(y+1,x+3) < c_b
                                                if im(y+3,x+1) > cb
                                                    continue;
                                                elseif im(y+3,x+1) < c_b
                                                else
                                                    if im(y+-2,x+-2) < c_b
                                                        if im(y+-3,x+0) < c_b
                                                            if im(y+0,x+-3) < c_b
                                                            else
                                                                continue;
                                                            end
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                end
                                            else
                                                if im(y+0,x+-3) < c_b
                                                    if im(y+-2,x+-2) < c_b
                                                        if im(y+-1,x+-3) < c_b
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            end
                                        else
                                            if im(y+-3,x+1) < c_b
                                                if im(y+-1,x+-3) < c_b
                                                    if im(y+-3,x+0) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    if im(y+-3,x+-1) < c_b
                                        if im(y+-1,x+-3) < c_b
                                            if im(y+-3,x+1) > cb
                                                continue;
                                            elseif im(y+-3,x+1) < c_b
                                                if im(y+2,x+-2) < c_b
                                                    if im(y+0,x+-3) < c_b
                                                        if im(y+-3,x+0) < c_b
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                if im(y+3,x+0) < c_b
                                                    if im(y+2,x+-2) < c_b
                                                        if im(y+1,x+3) > cb
                                                            continue;
                                                        elseif im(y+1,x+3) < c_b
                                                            if im(y+3,x+1) < c_b
                                                            else
                                                                continue;
                                                            end
                                                        else
                                                            if im(y+-2,x+-2) < c_b
                                                                if im(y+0,x+-3) < c_b
                                                                    if im(y+3,x+1) < c_b
                                                                    else
                                                                        continue;
                                                                    end
                                                                else
                                                                    continue;
                                                                end
                                                            else
                                                                continue;
                                                            end
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                end
                            else
                                if im(y+0,x+-3) < c_b
                                    if im(y+2,x+2) > cb
                                        continue;
                                    elseif im(y+2,x+2) < c_b
                                        if im(y+2,x+-2) < c_b
                                            if im(y+3,x+0) > cb
                                                continue;
                                            elseif im(y+3,x+0) < c_b
                                                if im(y+1,x+3) > cb
                                                    continue;
                                                elseif im(y+1,x+3) < c_b
                                                    if im(y+3,x+1) > cb
                                                        continue;
                                                    elseif im(y+3,x+1) < c_b
                                                    else
                                                        if im(y+-3,x+-1) < c_b
                                                        else
                                                            continue;
                                                        end
                                                    end
                                                else
                                                    if im(y+-2,x+-2) < c_b
                                                        if im(y+-1,x+-3) < c_b
                                                            if im(y+3,x+1) > cb
                                                                continue;
                                                            elseif im(y+3,x+1) < c_b
                                                            else
                                                                if im(y+-3,x+1) < c_b
                                                                else
                                                                    continue;
                                                                end
                                                            end
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                end
                                            else
                                                if im(y+-3,x+1) < c_b
                                                    if im(y+-3,x+-1) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        if im(y+-3,x+-1) < c_b
                                            if im(y+-1,x+-3) < c_b
                                                if im(y+2,x+-2) < c_b
                                                    if im(y+3,x+1) > cb
                                                        continue;
                                                    elseif im(y+3,x+1) < c_b
                                                        if im(y+-2,x+-2) < c_b
                                                            if im(y+3,x+0) > cb
                                                                continue;
                                                            elseif im(y+3,x+0) < c_b
                                                            else
                                                                if im(y+1,x+3) > cb||im(y+1,x+3) < c_b
                                                                    continue;
                                                                else
                                                                end
                                                            end
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        if im(y+-3,x+1) > cb
                                                            continue;
                                                        elseif im(y+-3,x+1) < c_b
                                                        else
                                                            if im(y+3,x+0) < c_b
                                                                if im(y+1,x+3) > cb||im(y+1,x+3) < c_b
                                                                    continue;
                                                                else
                                                                    if im(y+-2,x+-2) < c_b
                                                                    else
                                                                        continue;
                                                                    end
                                                                end
                                                            else
                                                                continue;
                                                            end
                                                        end
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    end
                                else
                                    continue;
                                end
                            end
                        else
                            continue;
                        end
                    end
                else
                    if im(y+-3,x+0) > cb
                        if im(y+-2,x+2) > cb
                            if im(y+2,x+-2) > cb
                                if im(y+-1,x+-3) > cb
                                    if im(y+-2,x+-2) > cb
                                        if im(y+1,x+-3) > cb
                                            if im(y+-3,x+1) > cb
                                                if im(y+0,x+-3) > cb
                                                    if im(y+-3,x+-1) > cb
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            elseif im(y+2,x+-2) < c_b
                                if im(y+1,x+-3) > cb
                                    if im(y+-1,x+3) > cb
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            else
                                if im(y+-1,x+3) > cb
                                    if im(y+1,x+-3) > cb
                                        if im(y+-1,x+-3) > cb
                                            if im(y+-3,x+-1) > cb
                                                if im(y+0,x+-3) > cb
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            end
                        else
                            continue;
                        end
                    elseif im(y+-3,x+0) < c_b
                        if im(y+2,x+2) > cb
                            if im(y+0,x+-3) > cb
                                if im(y+1,x+3) < c_b
                                    if im(y+-1,x+-3) < c_b
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            elseif im(y+0,x+-3) < c_b
                                if im(y+-2,x+2) < c_b
                                    if im(y+-2,x+-2) < c_b
                                        if im(y+-1,x+-3) < c_b
                                            if im(y+-3,x+-1) < c_b
                                                if im(y+-1,x+3) < c_b
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            else
                                if im(y+1,x+3) < c_b
                                    if im(y+-1,x+-3) < c_b
                                        if im(y+-1,x+3) < c_b
                                            if im(y+-3,x+1) < c_b
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            end
                        elseif im(y+2,x+2) < c_b
                            if im(y+-2,x+2) < c_b
                                if im(y+3,x+1) > cb
                                    if im(y+1,x+-3) > cb
                                        continue;
                                    elseif im(y+1,x+-3) < c_b
                                        if im(y+-1,x+3) < c_b
                                            if im(y+1,x+3) < c_b
                                                if im(y+-3,x+1) < c_b
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        if im(y+-3,x+1) < c_b
                                            if im(y+-2,x+-2) < c_b
                                                if im(y+1,x+3) < c_b
                                                    if im(y+-3,x+-1) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    end
                                elseif im(y+3,x+1) < c_b
                                    if im(y+1,x+3) > cb
                                        continue;
                                    elseif im(y+1,x+3) < c_b
                                        if im(y+-3,x+-1) > cb
                                        elseif im(y+-3,x+-1) < c_b
                                            if im(y+-3,x+1) < c_b
                                                if im(y+-1,x+3) > cb
                                                    continue;
                                                elseif im(y+-1,x+3) < c_b
                                                else
                                                    if im(y+0,x+-3) < c_b
                                                        if im(y+2,x+-2) < c_b
                                                            if im(y+1,x+-3) < c_b
                                                            else
                                                                continue;
                                                            end
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            if im(y+3,x+0) < c_b
                                                if im(y+-1,x+3) < c_b
                                                    if im(y+-3,x+1) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        end
                                    else
                                        if im(y+0,x+-3) < c_b
                                            if im(y+-1,x+-3) < c_b
                                                if im(y+-3,x+1) < c_b
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    end
                                else
                                    if im(y+-2,x+-2) < c_b
                                        if im(y+1,x+3) > cb
                                            continue;
                                        elseif im(y+1,x+3) < c_b
                                            if im(y+-1,x+3) > cb
                                                continue;
                                            elseif im(y+-1,x+3) < c_b
                                                if im(y+-3,x+1) < c_b
                                                    if im(y+-3,x+-1) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                if im(y+0,x+-3) < c_b
                                                    if im(y+2,x+-2) < c_b
                                                        if im(y+3,x+0) > cb||im(y+3,x+0) < c_b
                                                            continue;
                                                        else
                                                            if im(y+-3,x+1) < c_b
                                                            else
                                                                continue;
                                                            end
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            end
                                        else
                                            if im(y+0,x+-3) < c_b
                                                if im(y+-1,x+-3) < c_b
                                                    if im(y+-3,x+1) < c_b
                                                        if im(y+-1,x+3) > cb
                                                            continue;
                                                        elseif im(y+-1,x+3) < c_b
                                                        else
                                                            if im(y+1,x+-3) < c_b
                                                                if im(y+-3,x+-1) < c_b
                                                                else
                                                                    continue;
                                                                end
                                                            else
                                                                continue;
                                                            end
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        end
                                    else
                                        continue;
                                    end
                                end
                            else
                                continue;
                            end
                        else
                            if im(y+-1,x+-3) < c_b
                                if im(y+1,x+3) > cb
                                    if im(y+0,x+-3) < c_b
                                        if im(y+-1,x+3) < c_b
                                            if im(y+-2,x+-2) < c_b
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                elseif im(y+1,x+3) < c_b
                                    if im(y+-2,x+2) < c_b
                                        if im(y+-1,x+3) > cb
                                            continue;
                                        elseif im(y+-1,x+3) < c_b
                                            if im(y+-2,x+-2) < c_b
                                                if im(y+-3,x+1) < c_b
                                                    if im(y+-3,x+-1) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            if im(y+2,x+-2) < c_b
                                                if im(y+0,x+-3) < c_b
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    if im(y+0,x+-3) < c_b
                                        if im(y+-2,x+2) < c_b
                                            if im(y+-2,x+-2) < c_b
                                                if im(y+-3,x+1) < c_b
                                                    if im(y+-1,x+3) > cb
                                                        continue;
                                                    elseif im(y+-1,x+3) < c_b
                                                        if im(y+-3,x+-1) < c_b
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        if im(y+2,x+-2) < c_b
                                                        else
                                                            continue;
                                                        end
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                end
                            else
                                continue;
                            end
                        end
                    else
                        continue;
                    end
                end
            else
                if im(y+0,x+-3) > cb
                    if im(y+-3,x+1) > cb
                        if im(y+1,x+-3) > cb
                            if im(y+-1,x+-3) > cb
                                if im(y+2,x+-2) > cb
                                    if im(y+-2,x+2) > cb
                                        if im(y+-2,x+-2) > cb
                                            if im(y+-3,x+-1) > cb
                                                if im(y+-3,x+0) > cb
                                                elseif im(y+-3,x+0) < c_b
                                                    continue;
                                                else
                                                    if im(y+3,x+1) > cb
                                                        if im(y+3,x+0) > cb
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                end
                                            elseif im(y+-3,x+-1) < c_b
                                                continue;
                                            else
                                                if im(y+2,x+2) > cb
                                                    if im(y+3,x+1) > cb
                                                        if im(y+3,x+-1) > cb
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            end
                                        elseif im(y+-2,x+-2) < c_b
                                            continue;
                                        else
                                            if im(y+1,x+3) > cb
                                                if im(y+3,x+1) > cb
                                                    if im(y+3,x+-1) > cb
                                                        if im(y+2,x+2) > cb
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        end
                                    elseif im(y+-2,x+2) < c_b
                                        if im(y+3,x+0) > cb
                                            if im(y+1,x+3) > cb
                                            elseif im(y+1,x+3) < c_b
                                                continue;
                                            else
                                                if im(y+-2,x+-2) > cb
                                                else
                                                    continue;
                                                end
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        if im(y+3,x+-1) > cb
                                            if im(y+-2,x+-2) > cb
                                                if im(y+-3,x+-1) > cb
                                                    if im(y+-3,x+0) > cb
                                                    elseif im(y+-3,x+0) < c_b
                                                        continue;
                                                    else
                                                        if im(y+3,x+1) > cb
                                                            if im(y+3,x+0) > cb
                                                            else
                                                                continue;
                                                            end
                                                        else
                                                            continue;
                                                        end
                                                    end
                                                elseif im(y+-3,x+-1) < c_b
                                                    continue;
                                                else
                                                    if im(y+2,x+2) > cb
                                                        if im(y+3,x+1) > cb
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                end
                                            elseif im(y+-2,x+-2) < c_b
                                                continue;
                                            else
                                                if im(y+1,x+3) > cb
                                                    if im(y+2,x+2) > cb
                                                        if im(y+3,x+1) > cb
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            end
                                        else
                                            continue;
                                        end
                                    end
                                elseif im(y+2,x+-2) < c_b
                                    if im(y+-3,x+-1) > cb
                                        if im(y+-1,x+3) > cb
                                            if im(y+-2,x+-2) > cb
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    if im(y+-1,x+3) > cb
                                        if im(y+-2,x+2) > cb
                                            if im(y+-3,x+-1) > cb
                                                if im(y+-2,x+-2) > cb
                                                    if im(y+-3,x+0) > cb
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                end
                            else
                                continue;
                            end
                        else
                            continue;
                        end
                    elseif im(y+-3,x+1) < c_b
                        if im(y+2,x+2) > cb
                            if im(y+-1,x+-3) > cb
                                if im(y+3,x+-1) > cb
                                    if im(y+1,x+3) > cb
                                        if im(y+1,x+-3) > cb
                                            if im(y+2,x+-2) > cb
                                                if im(y+3,x+0) > cb
                                                    if im(y+3,x+1) > cb
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    elseif im(y+1,x+3) < c_b
                                        continue;
                                    else
                                        if im(y+-2,x+-2) > cb
                                            if im(y+1,x+-3) > cb
                                                if im(y+3,x+1) > cb
                                                    if im(y+2,x+-2) > cb
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    end
                                else
                                    continue;
                                end
                            else
                                continue;
                            end
                        elseif im(y+2,x+2) < c_b
                            if im(y+3,x+1) > cb
                                if im(y+-3,x+-1) > cb
                                else
                                    continue;
                                end
                            else
                                continue;
                            end
                        else
                            if im(y+-3,x+-1) > cb
                                if im(y+3,x+1) > cb
                                    if im(y+3,x+0) > cb
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            else
                                continue;
                            end
                        end
                    else
                        if im(y+3,x+0) > cb
                            if im(y+-2,x+-2) > cb
                                if im(y+2,x+-2) > cb
                                    if im(y+3,x+1) > cb
                                        if im(y+1,x+-3) > cb
                                            if im(y+-1,x+-3) > cb
                                                if im(y+2,x+2) > cb
                                                    if im(y+3,x+-1) > cb
                                                    else
                                                        continue;
                                                    end
                                                elseif im(y+2,x+2) < c_b
                                                    if im(y+-3,x+-1) > cb
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    if im(y+-3,x+-1) > cb
                                                        if im(y+3,x+-1) > cb
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    elseif im(y+3,x+1) < c_b
                                        continue;
                                    else
                                        if im(y+-3,x+0) > cb
                                            if im(y+-1,x+-3) > cb
                                                if im(y+1,x+-3) > cb
                                                    if im(y+3,x+-1) > cb
                                                        if im(y+-3,x+-1) > cb
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    end
                                else
                                    continue;
                                end
                            elseif im(y+-2,x+-2) < c_b
                                if im(y+-1,x+-3) > cb
                                    if im(y+1,x+3) > cb
                                        if im(y+3,x+-1) > cb
                                            if im(y+2,x+-2) > cb
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            else
                                if im(y+1,x+3) > cb
                                    if im(y+-1,x+-3) > cb
                                        if im(y+2,x+-2) > cb
                                            if im(y+2,x+2) > cb
                                                if im(y+1,x+-3) > cb
                                                    if im(y+3,x+-1) > cb
                                                        if im(y+3,x+1) > cb
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            end
                        else
                            continue;
                        end
                    end
                elseif im(y+0,x+-3) < c_b
                    if im(y+3,x+-1) > cb
                        if im(y+-1,x+3) > cb
                            continue;
                        elseif im(y+-1,x+3) < c_b
                            if im(y+1,x+-3) < c_b
                                if im(y+-3,x+1) < c_b
                                    if im(y+-1,x+-3) < c_b
                                        if im(y+-2,x+2) < c_b
                                            if im(y+-3,x+-1) < c_b
                                                if im(y+-3,x+0) < c_b
                                                    if im(y+-2,x+-2) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            else
                                continue;
                            end
                        else
                            if im(y+2,x+-2) < c_b
                                if im(y+-2,x+2) < c_b
                                    if im(y+-1,x+-3) < c_b
                                        if im(y+-3,x+1) < c_b
                                            if im(y+-3,x+-1) < c_b
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            else
                                continue;
                            end
                        end
                    elseif im(y+3,x+-1) < c_b
                        if im(y+-1,x+-3) < c_b
                            if im(y+-3,x+-1) > cb
                                if im(y+1,x+3) > cb
                                    continue;
                                elseif im(y+1,x+3) < c_b
                                    if im(y+2,x+2) < c_b
                                        if im(y+3,x+1) < c_b
                                            if im(y+2,x+-2) < c_b
                                                if im(y+1,x+-3) < c_b
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    if im(y+-2,x+-2) < c_b
                                        if im(y+2,x+2) < c_b
                                            if im(y+3,x+1) < c_b
                                                if im(y+-2,x+2) < c_b
                                                    continue;
                                                else
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                end
                            elseif im(y+-3,x+-1) < c_b
                                if im(y+1,x+-3) < c_b
                                    if im(y+2,x+-2) > cb
                                        continue;
                                    elseif im(y+2,x+-2) < c_b
                                        if im(y+3,x+1) > cb
                                            if im(y+-3,x+1) > cb
                                                continue;
                                            elseif im(y+-3,x+1) < c_b
                                            else
                                                if im(y+3,x+0) < c_b
                                                else
                                                    continue;
                                                end
                                            end
                                        elseif im(y+3,x+1) < c_b
                                            if im(y+-2,x+-2) > cb
                                                continue;
                                            elseif im(y+-2,x+-2) < c_b
                                                if im(y+3,x+0) > cb
                                                    continue;
                                                elseif im(y+3,x+0) < c_b
                                                else
                                                    if im(y+-3,x+1) < c_b
                                                        if im(y+-3,x+0) < c_b
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                end
                                            else
                                                if im(y+1,x+3) < c_b
                                                    if im(y+2,x+2) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            end
                                        else
                                            if im(y+-3,x+1) > cb
                                                continue;
                                            elseif im(y+-3,x+1) < c_b
                                                if im(y+-2,x+-2) < c_b
                                                    if im(y+-3,x+0) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                if im(y+3,x+0) < c_b
                                                    if im(y+-3,x+0) < c_b
                                                        if im(y+-2,x+-2) < c_b
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            end
                                        end
                                    else
                                        if im(y+-1,x+3) < c_b
                                            if im(y+-3,x+1) < c_b
                                                if im(y+-2,x+2) < c_b
                                                    if im(y+-2,x+-2) < c_b
                                                        if im(y+-3,x+0) < c_b
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    end
                                else
                                    continue;
                                end
                            else
                                if im(y+2,x+2) < c_b
                                    if im(y+-2,x+-2) > cb
                                        if im(y+1,x+3) < c_b
                                        else
                                            continue;
                                        end
                                    elseif im(y+-2,x+-2) < c_b
                                        if im(y+1,x+-3) < c_b
                                            if im(y+3,x+1) < c_b
                                                if im(y+2,x+-2) < c_b
                                                    if im(y+3,x+0) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        if im(y+1,x+3) < c_b
                                            if im(y+1,x+-3) < c_b
                                                if im(y+2,x+-2) < c_b
                                                    if im(y+3,x+1) < c_b
                                                        if im(y+3,x+0) < c_b
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    end
                                else
                                    continue;
                                end
                            end
                        else
                            continue;
                        end
                    else
                        if im(y+-2,x+2) < c_b
                            if im(y+1,x+-3) < c_b
                                if im(y+-1,x+3) > cb
                                    if im(y+2,x+-2) < c_b
                                        if im(y+-1,x+-3) < c_b
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                elseif im(y+-1,x+3) < c_b
                                    if im(y+-3,x+1) < c_b
                                        if im(y+-1,x+-3) < c_b
                                            if im(y+-2,x+-2) < c_b
                                                if im(y+-3,x+-1) < c_b
                                                    if im(y+-3,x+0) < c_b
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                else
                                    if im(y+2,x+-2) < c_b
                                        if im(y+-3,x+1) < c_b
                                            if im(y+-1,x+-3) < c_b
                                                if im(y+-3,x+-1) < c_b
                                                    if im(y+-2,x+-2) < c_b
                                                        if im(y+-3,x+0) < c_b
                                                        else
                                                            continue;
                                                        end
                                                    else
                                                        continue;
                                                    end
                                                else
                                                    continue;
                                                end
                                            else
                                                continue;
                                            end
                                        else
                                            continue;
                                        end
                                    else
                                        continue;
                                    end
                                end
                            else
                                continue;
                            end
                        else
                            continue;
                        end
                    end
                else
                    continue;
                end
            end
			nc = nc + 1;														
			if nc > length(cs)													
				cs(length(cs)*2,1) = 0;											
			end																	
			cs(nc,1) = x;														
			cs(nc,2) = y;														
		end																		
	end																			
	coords = cs([1:nc],:);														
