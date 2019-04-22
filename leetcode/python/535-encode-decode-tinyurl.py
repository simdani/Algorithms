class Codec:
    keyValueStore = {}

    def encode(self, longUrl):
        """Encodes a URL to a shortened URL.
        
        :type longUrl: str
        :rtype: str
        """
        hashedUrl = hash("http://tinyurl.com/" + longUrl)
        self.keyValueStore[hashedUrl] = longUrl

        return hashedUrl
        

    def decode(self, shortUrl):
        """Decodes a shortened URL to its original URL.
        
        :type shortUrl: str
        :rtype: str
        """
        return self.keyValueStore.get(shortUrl)
        
# Your Codec object will be instantiated and called as such:
# codec = Codec()
# codec.decode(codec.encode(url))

codec = Codec()
print(codec.decode(codec.encode("test.com/324")))