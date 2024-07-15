module.exports = async (srv) => {
 
  //implementation code
  srv.on('greeting', (req,res)=>{
      return "good morning ! " + req.data.name ;
  })

}