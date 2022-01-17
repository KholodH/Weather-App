import Foundation
struct getApi{
            func ApiData(comp: @escaping(Welcome)->()) {

                let api = URL(string:"https://api.openweathermap.org/data/2.5/onecall?lat=24.468611&lon=39.61417&exclude=daily,minutely&units=metric&appid=d6d9e9befc1a0da26da340416425192e")
                
                URLSession.shared.dataTask(with: api!) { (data, res, err) in
                if  err != nil{
                    print(err!.localizedDescription)
                }
                if let data = data{
                    do{
                        let result = try JSONDecoder().decode(Welcome.self, from: data)
                       // DispatchQueue.main.async {
                           comp(result)
                      //  }
                    }catch{
                        print("no data")
                    }
                }
            }.resume()
        }
        
    }
