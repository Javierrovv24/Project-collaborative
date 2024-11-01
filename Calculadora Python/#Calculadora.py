#Calculadora
import tkinter as tk   #importamos las librerias 
from tkinter import messagebox

class Calculadora(tk.Tk):   #Creamos la clase calculadora
    def __init__(self):    # Constructor parametizado 
        super().__init__() 

        self.title("Calculadora")
        self.geometry("280x280")

        self.entry = tk.Entry(self, width=35, borderwidth=5)
        self.entry.grid(row=0, column=0, columnspan=4, pady=10)

        self.buttons = []

        buttons = [
            ["7", "8", "9", "/"],
            ["4", "5", "6", "*"],
            ["1", "2", "3", "-"],
            ["0", ".", "C", "+"],
            ["="]
        ]

        for i, button_row in enumerate(buttons):
            for j, button in enumerate(button_row):
                if button == "":
                    continue
                self.buttons.append(tk.Button(self, text=button, command=lambda b=button: self.button_click(b)))
                self.buttons[-1].grid(row=i+1, column=j, ipadx=10, ipady=10)

    def button_click(self, button):
        if button == "C":
            self.entry.delete(0, tk.END)
        elif button == "=":
            try:
                result = eval(self.entry.get())
                self.entry.delete(0, tk.END)
                self.entry.insert(0, result)
            except Exception as e:
                messagebox.showerror("Error", str(e))
        elif button == "(":
            self.entry.insert(tk.END, "(")
        elif button == ")":
            self.entry.insert(tk.END, ")")
        else:
            self.entry.insert(tk.END, button)

if __name__ == "__main__":
    app = Calculadora()
    app.mainloop()