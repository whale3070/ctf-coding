class renminbi_Convert(object):
    def Vietnamese_Shield(self, renminbi):
        Viet = renminbi * 3408.21
        #return 'Vietnamese_dong: ' + str(Viet)
        return str(Viet)
    def Dollar(self, renminbi):
        dollar = renminbi * 0.15
        #return 'Dollar: ' + str(dollar)
        return str(dollar)
    def Bitcoin(self, renminbi):
        bitcoin = renminbi * 0.000022
        #return 'Bitcoin: ' + str(bitcoin)
        return str(bitcoin)
class Dollar_Convert(object):
    def Vietnamese_Shield(self, dollar):
        Viet = dollar * 23318.75
        return 'Vietnamese_dong: ' + str(Viet)
    def renminbi(self, dollar):
        renminbi = dollar * 0.15
        return 'renminbi: ' + str(dollar)
    def Bitcoin(self,dollar):
        bitcoin = dollar * 0.00015 
        return 'bitcoin: ' +str(bitcoin)        

'''        
new=renminbi_Convert()
result=new.Vietnamese_Shield(9)    
print type(result)
'''
#renminbi = input('renminbi? ')

#other = input('dollar ?  ')
#new = Dollar_Convert()
#new.Bitcoin(other)

#new = renminbi_Convert()
#new.Vietnamese_Shield(quest)    
#new.Dollar(quest)
#new.Yen(quest)
