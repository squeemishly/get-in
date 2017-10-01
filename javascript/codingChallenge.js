class GetIn {
  retrieve(data, values) {
    let val = data
    values.forEach(key => {
      val = val[key]
    })
    return val
  }
}

module.exports = GetIn;
