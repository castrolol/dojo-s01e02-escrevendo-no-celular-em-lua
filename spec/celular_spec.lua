local celular = require "celular"

describe("Dojo Modulo Celular", function()
 
    
   
    it("A single letter is converted to a number", function()
        assert.are.equal(celular.converter("A"), "2")
        assert.are.equal(celular.converter("B"), "22")
        assert.are.equal(celular.converter("D"), "3")
        assert.are.equal(celular.converter(" "), "0")
        assert.are.equal(celular.converter("Z"), "9999")
        assert.are.equal(celular.converter("C"), "222")
    end)

    it("A single word is converted to numbers", function()
        assert.are.equal(celular.converter("ADG"), "234")
    end)
    
    it("A single spaced word is converted to numbers (OMG)", function()
        assert.are.equal(celular.converter("ADG A"), "23402")
        assert.are.equal(celular.converter("A D G A"), "2030402")
    end)
    
    it("A single paused word is converted to numbers", function()
        assert.are.equal(celular.converter("ABC"), "2_22_222")
    end)

    it("should return '77773367_7773302_222337777_777766606660366656667889999_9999555337777' when pass 'SEMPRE ACESSO O DOJOPUZZLES'", function()
        assert.are.equal(celular.converter("SEMPRE ACESSO O DOJOPUZZLES"), "77773367_7773302_222337777_777766606660366656667889999_9999555337777")
    end)

end)