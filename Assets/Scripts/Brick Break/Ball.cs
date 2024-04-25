using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ball : MonoBehaviour
{
    public Rigidbody2D rb;

    public GameObject melonPrefab;
    public GameObject halfMelonPrefab;
    public GameObject sliceMelonPrefab;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        BallMovement();
    }

    void BallMovement()
    {
        if(GameManager.startGame == true && GameManager.gameStarted == false) {
            rb.AddForce(transform.up * 400f);
            //rb.AddForce(transform.right * -250f);
            GameManager.gameStarted = true;
        }

        if(rb.velocity.x < 1 && rb.velocity.x >= 0) {
            rb.AddForce(transform.right * -50);
        }

        if(rb.velocity.x > -1 && rb.velocity.x < 0) {
            rb.AddForce(transform.right * 50);
        }

        if(rb.velocity.y < 1 && rb.velocity.y >= 0) {
            rb.AddForce(transform.up * -50);
        }

        if(rb.velocity.y > -1 && rb.velocity.y < 0) {
            rb.AddForce(transform.up * 50);
        }
    }

    void OnCollisionEnter2D(Collision2D collision)
    {
        if(collision.gameObject.tag == "FullFruit") {
            Instantiate(halfMelonPrefab, collision.gameObject.transform.position, transform.rotation);
            Destroy(collision.gameObject);
        }
        else if (collision.gameObject.tag == "HalfFruit") {
            Instantiate(sliceMelonPrefab, collision.gameObject.transform.position, transform.rotation);
            Destroy(collision.gameObject);
        }
        else if (collision.gameObject.tag == "SliceFruit") {
            Destroy(collision.gameObject);
        }

        
    }
}
