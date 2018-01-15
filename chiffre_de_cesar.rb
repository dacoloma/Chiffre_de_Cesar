def chiffre_de_cesar(str,n)
    #Création d'un 2e string
    str2=""

    #Modulo 26 pour n dans le cas où n > 26 pour obtenir n de 1 à 26
    n = n%26

    #Itération sur chaque caractère d'un string
    str.each_char do |l|

        #Casse MAJUSCULE
        if l.ord > 64 && l.ord < 91
            if l.ord + n < 91
                str2 << (l.ord+n).chr
            else
                str2 << (l.ord + n - 26).chr
            end

        #Casse minuscule
        elsif l.ord > 96 && l.ord < 123
            if l.ord + n < 123
                str2 << (l.ord+n).chr
            else
                str2 << (l.ord + n - 26).chr
            end
        end
    end
    puts str2
end


print "Test ABCD,1 : "
chiffre_de_cesar("ABCD",1)

print "Test ABCD, 26 : "
chiffre_de_cesar("ABCD",27)

=begin
def  test(l, n)
    n = n%26
    if l.ord > 64 && l.ord < 91
        if l.ord + n < 91
            return (l.ord + n).chr
        else
            return (l.ord + n - 26).chr
        end

    end

    if l.ord > 96 && l.ord < 123
        if l.ord + n < 123
            return (l.ord + n).chr
        else
            return (l.ord + n - 26).chr
        end
    end
end
=end

=begin
puts test('A', 2)
puts test('Z', 2)
puts test('a', 2)
puts test('z', 2)
=end
