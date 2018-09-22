#coding:utf-8
import convert
import tkinter as tk
from tkinter import ttk

def Calculate():
    From=two.get()
    To=three.get()
    if From == 'renminbi':
        new=convert.renminbi_Convert()
        if To == 'Vietnamese_Shield':         
            result=new.Vietnamese_Shield(int(one.get()))
            #action.configure(text='done')
            four.configure(text=result)
            #print result
        elif To == 'bitcoin':
            result=new.Bitcoin(  int(one.get()) )
            four.configure(text=result)
        elif To == 'dollar':
            result=new.Dollar(int(one.get()))
            four.configure(text=result)
    elif From == 'dollar':
        action.configure(text=two.get())
    else:
        pass
win = tk.Tk()
win.title("Calculate Money")

#第一行
ttk.Label(win,text='Input').grid(column=0,row=0)
ttk.Label(win,text='From').grid(column=1,row=0)
ttk.Label(win,text='To').grid(column=2,row=0)
ttk.Label(win,text='result').grid(column=3,row=0)

#第二行第一列
#ttk.Entry是输入框
one = tk.StringVar()
inputNumber = ttk.Entry(win, width=12, textvariable=one)
inputNumber.grid(column=0,row=1)
inputNumber.focus()

#第二行第二列
#ttk.Combobox是下拉框
two = tk.StringVar()
choice = ttk.Combobox(win,width=12,textvariable=two)
choice['values']=('renminbi','dollar')
choice.grid(column=1,row=1)

#第二行第三列
three = tk.StringVar()
convertTo = ttk.Combobox(win,width=20,textvariable=three)
convertTo['values']=('Vietnamese_Shield','renminbi','bitcoin','dollar')
convertTo.grid(column=2,row=1)

#第二行第四列
#four = tk.StringVar()
#inputNumber2 = ttk.Entry(win, width=12, textvariable=four)
four=ttk.Button(win,text="",command=Calculate)
four.grid(column=3,row=1)

#第二行第五列
action=ttk.Button(win,text="Convert",command=Calculate)
action.grid(column=4,row=1)
win.mainloop()

