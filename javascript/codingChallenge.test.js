const assert = require('chai').assert;
const GetIn = require('./codingChallenge');

describe('GetIn', () => {
  before( () => {
    gi = new GetIn
  })

  it('can retrieve the value from a simple hash', () => {
    assert.equal("hash", gi.retrieve({"aSimple": "hash"}, ["aSimple"]))
  });
});
