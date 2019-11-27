
def checkLen( str )
    return ( str.length == 0 )
end

def check( str )

    stack = []
    
    str.split(//).each{ |i|

        if( i == '(' )
            stack.append( i )
        else
            if( ( i == ')' ) && !checkLen( stack ) )
               stack.pop()
            elsif( ( i == ')') && checkLen( stack ) )
                stack.append( i )
                break
            end
        end
    }

    return checkLen( stack )

end

puts( check( '()(()())' ) )
puts( check( ')())' ) )
puts( check( 'qwerty()' ) )