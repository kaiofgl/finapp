const random = () => {
  return Math.floor(Math.random() * 9999)
}
const randomDate = () => {
  const date = new Date(new Date().getTime() - (random() * (random() * 4))).toISOString()
  return date
}

const cards = [
  {
    card_number: `${random()} ${random()} ${random()} ${random()}`,
    card_name: "John Doe",
    expire_date: `${Math.floor(Math.random() * 12)}/${Math.floor(Math.random() * 20)}`,
    card_flag: "Mastercard",
    card_flag_logo: "https://logodownload.org/wp-content/uploads/2014/07/mastercard-logo-7.png"
  },
  {
    card_number: `${random()} ${random()} ${random()} ${random()}`,
    card_name: "Doe John",
    expire_date: `${Math.floor(Math.random() * 12)}/${Math.floor(Math.random() * 20)}`,
    card_flag: "Visa",
    card_flag_logo: "https://logodownload.org/wp-content/uploads/2016/10/visa-logo.png"
  },
  {
    card_number: `${random()} ${random()} ${random()} ${random()}`,
    card_name: "Skuth Dev",
    expire_date: `${Math.floor(Math.random() * 12)}/${Math.floor(Math.random() * 20)}`,
    card_flag: "Visa",
    card_flag_logo: "https://logodownload.org/wp-content/uploads/2016/10/visa-logo.png"
  }
]

const categories = [
  {
    name: "Shopping",
    total: random()
  },
  {
    name: "Online",
    total: random()
  },
  {
    name: "Transport",
    total: random()
  },
  {
    name: "Pharmacy",
    total: random()
  }
]

const lastTransactions = [
  {
    name: "Grocery",
    date: randomDate(),
    total: random()
  },
  {
    name: "Gym",
    date: randomDate(),
    total: random()
  },
  {
    name: "Steam",
    date: randomDate(),
    total: random()
  },
  {
    name: "Ultra Pharmacy",
    date: randomDate(),
    total: random()
  }
]

const chartData = {
  labels: ["January", "February", "March", "April", "May", "June"],
  datasets: [
    {
      data: [
        random(),
        random(),
        random(),
        random(),
        random(),
        random()
      ]
    }
  ]
}

const transactions = {
  total_spent: (
    Object.values(categories).reduce((a, b) => +a + +b.total, 0)
    +
    Object.values(lastTransactions).reduce((a, b) => +a + +b.total, 0)
  ),
  categories: categories,
  last_transactions: lastTransactions
}

export { cards, chartData, transactions }