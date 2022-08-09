const express = require('express');

const router = express.Router();

const db = require('../db');

//http://localhost:4000/questions/getquestions
router.get('/getquestions', async(req, res) => {
    try{
        const response = await db.promise().query('SELECT * FROM questions');
        //console.log(response[0]);
        res.status(200).json(response[0]);
    }
    catch(err){
        res.status(400).json(err);
    }
})

//http://localhost:4000/users/searchuser/:id

// router.get("/searchuser/:userId", async (req, res) => {
//     try {
//         const userId = req.params.userId;
//         const response = await db
//             .promise()
//             .query(`SELECT name, email, username FROM users WHERE userid = '${userId}'`);
//         res.status(200).json(response[0]);
//     } catch (err) {
//         res.status(400).json(err);
//     }
// });

// http://localhost:4000/users/finduser?id=id005
// router.get("/finduser/", async (req, res) => {
//     try {
//         const userId = req.query.id;
//         const response = await db
//             .promise()
//             .query(`SELECT * FROM users WHERE userid = '${userId}'`);
//         res.status(200).json(response[0]);
//     } catch (err) {
//         res.status(400).json(err);
//     }
// });

// http://localhost:4000/users/removeuser/id004
// router.delete("/removeuser/:userId", async (req, res) => {
//     try {
//         const userId = req.params.userId;
//         const response = await db
//             .promise()
//             .query(`DELETE FROM users WHERE userid = '${userId}'`);
//         res.status(200).json(response[0]);
//     } catch (err) {
//         res.status(400).json(err);
//     }
// });


// http://localhost:4000/questions/addquestion
router.post('/addquestion', async(req, res) => {
    try {
        // console.log(req.body);
        const response = await db.promise().query(`INSERT INTO questions (subject_id, question, answer1, answer2, answer3, answer4, answer5, correctanswer)
          VALUES ('${req.body.subject_id}','${req.body.question}',' ${req.body.answer1}','${req.body.answer2}',
          '${req.body.answer3}', '${req.body.answer4}' , '${req.body.answer5}' , '${req.body.correctanswer}')`);
        
        res.status(201).json({ massage: 'success' });
    } catch(err) {
        res.status(400).json(err);
    }
})
  


// http://localhost:4000/users/login
// router.post('/login', async(req, res) => {
//     try {
//         const response = await db.promise().query(`SELECT * FROM users WHERE username = '${req.body.username}' `);
//         // user found in db
//         if(response[0].length > 0) {
//             //password matched
//             // console.log(response[0][0].password, req.body.password);
//             if(response[0][0].password == req.body.password) {
//                 // res.status(202).json(response[0]);
//                 res.status(202).json({message: 'Successfully logged in'});
//             }
//             //password not matched
//             else {
//                 res.status(401).json({message: 'Incorrect Password'});
//             }
//         }
//         // user not found
//         else {
//             res.status(422).json({message: 'User Not Found'});
//         }        
//     } catch(err) {
//         // console.log(err);
//         res.status(400).json(err);
//     }
// })

// http://localhost:4000/users/updateuserpassword
// router.put('/updateuserpassword', async(req, res) => {
//     try {
//         console.log(req.body);
//         const response = await db.promise().query(`UPDATE users SET password = '${req.body.password}' WHERE username = '${req.body.username}'`);
//         console.log(response);
//         res.status(200).json(response[0]);
//     } catch(err) {
//         // console.log(err);
//         res.status(400).json({ massage: err.massage });
//     }
// })

module.exports = router;
