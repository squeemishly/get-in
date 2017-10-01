const assert = require('chai').assert;
const GetIn = require('./codingChallenge');

describe('GetIn', () => {
  before( () => {
    gi = new GetIn
    hash = {"aSimple": "hash",
            "aKitty": "cuteness",
            "Xena": {
              "badass": true,
              "weapons": {
                "pointy": "swords",
                "throwy": "chakram",
                "sharp": "wit"
              }

            }}
  })

  it('can retrieve one value from a simple hash', () => {
    assert.equal("hash", gi.retrieve(hash, ["aSimple"]))
  })

  it('can retrieve another value from a simple hash', () => {
    assert.equal("cuteness", gi.retrieve(hash, ["aKitty"]))
  })

  it('can retrieve a nested value in a hash', () => {
    assert.equal(true, gi.retrieve(hash, ["Xena", "badass"]))
  })

  it('can retrieve a deeply nested value in a hash', () => {
    assert.equal("wit", gi.retrieve(hash, ["Xena", "weapons", "sharp"]))
  })
})
