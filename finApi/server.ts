import * as express from "express"
import { Request, Response } from "express"

import { cards, chartDate, transactions } from "./data/account"

const app = express()
const PORT = 3333

app.get("/dash", (_req: Request, res: Response) => {
  return res.json({
    cards,
    transactions
  })
})

app.get("/chart", (_req: Request, res: Response) => {
  return res.json({
    chartDate
  })
})

app.listen(PORT, () => console.log(`Api running on port ${PORT}`))