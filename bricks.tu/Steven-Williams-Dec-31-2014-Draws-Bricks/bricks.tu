/*
 Steven Williams
 Dec 31, 2014
 Draws Bricks
 */
unit
module Bricks
    export Box
    % This draws bricks in a box
    procedure Box (x1, y1, x2, y2, brickwidth : int, brickheight : int, brickxspace : int, brickyspace : int, brickcol : int)
        var ya : int
        ya := y1
        loop
            exit when ya >= y2
            var xa : int
            xa := x1
            loop
                exit when xa >= x2
                var xb : int
                var yb : int
                xb := ya
                xb := xa
              
                if (xa + brickwidth) <= x2 then
                    if (ya + brickheight) <= y2 then
                        xb := xa + brickwidth
                        yb := ya + brickheight
                    else
                        xb := xa + brickwidth
                        yb := y2
                    end if
                else
                    if ya + brickheight <= y2 then
                        xb := x2
                        yb := ya + brickheight
                    else
                        xb := x2
                        yb := y2
                    end if
                end if
                Draw.FillBox (xa, ya, xb, yb, brickcol)
                xa := xa + brickwidth + brickxspace
            end loop
            ya := ya + brickheight + brickyspace
        end loop
    end Box
end Bricks
