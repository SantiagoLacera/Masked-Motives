using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MainController : MonoBehaviour
{
    public float speed = 2.0f;
    public float moveThreshold = 0.2f;

    private float moveX;
    private float moveY;

    private Animator animator;
    private Rigidbody2D rigidbody2d;

    void Start()
    {
        animator = GetComponent<Animator>();
        rigidbody2d = GetComponent<Rigidbody2D>();
        moveX = 0;
        moveY = 0;
    }

    void Update()
    {
        float horizontal = Input.GetAxis("Horizontal");
        float vertical = Input.GetAxis("Vertical");

        if (Mathf.Abs(horizontal) > moveThreshold)
        {
            animator.SetBool("Walking", true);
            animator.SetFloat("MoveX", horizontal);
            moveX = horizontal;
        }else if (Mathf.Abs(vertical) > moveThreshold)
        {
            animator.SetBool("Walking", true);
            animator.SetFloat("MoveY", vertical);
            moveY = vertical;
        } 
        
        else
        {
            animator.SetBool("Walking", false);
            moveX = 0;
            moveY = 0;
            
        }
    }

    void FixedUpdate()
    {
        Vector2 position = rigidbody2d.position;
        position.y += speed * moveY * Time.deltaTime;
        rigidbody2d.MovePosition(position);
    }
}
