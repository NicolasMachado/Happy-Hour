///scr_UI_process_message(string)

var str = argument0;
var stroutput = "";
var lastspace = 0;
var maxwidth = 600;
if global.lowres {
    draw_set_font(UI);
} else {
    draw_set_font(UI_big);    
}

// construct output strings with linebreaks
for (i=1; i <= string_length(str); i++) {
    stroutput += string_char_at(str, i);
    
    // record last space
    if string_char_at(str, i) == " " {
        lastspace = i;
    }
    
    // replace last space by # if string width exceeds maxwidth
    if string_width(stroutput) > maxwidth {
        stroutput = string_delete(stroutput, lastspace, 1);
        stroutput = string_insert("#", stroutput, lastspace);        
    }
}

return stroutput;
