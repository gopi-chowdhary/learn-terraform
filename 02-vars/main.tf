variable "fruit" {
  default= "apple"
}

variable "fruits" {
  default = [ "apple","banana" ]
}

variable "fruit_price" {
  default = {
    apple = 10
    banana = 20
  }
}

output "fruit" {
  value = var.fruit
}

output "second_fruit" {
  value = var.fruits[1]
}

output "fruit_price" {
  value = "price of banana = ${var.fruit_price["banana"]}"
}