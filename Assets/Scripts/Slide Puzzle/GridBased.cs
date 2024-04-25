using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class GridBased : MonoBehaviour
{
    public float moveSpeed = 5f;
    public LayerMask obstacleLayers;
    public Transform movePoint;
    private bool takingInput = true;

    // Start is called before the first frame update
    void Start()
    {
        movePoint.parent = null;
    }

    // Update is called once per frame
    void Update()
    {
        

        if (takingInput == true) {
            if (Vector3.Distance(transform.position, movePoint.position) <= 0.05f) {
        
                if (Mathf.Abs(Input.GetAxisRaw("Horizontal")) > 0) {
                    takingInput = false;
                    while(!Physics2D.OverlapCircle(movePoint.position + new Vector3(Input.GetAxisRaw("Horizontal"), 0f), .5f, obstacleLayers)) {
                        movePoint.position += new Vector3(Input.GetAxisRaw("Horizontal"), 0f);
                    }
                    transform.position = Vector3.MoveTowards(transform.position, movePoint.position, moveSpeed * Time.deltaTime);
                }

                else if (Mathf.Abs(Input.GetAxisRaw("Vertical")) > 0) {
                    takingInput = false;
                    while(!Physics2D.OverlapCircle(movePoint.position + new Vector3(0f, Input.GetAxisRaw("Vertical")), .5f, obstacleLayers)) {
                        movePoint.position += new Vector3(0f, Input.GetAxisRaw("Vertical"));
                    }
                    transform.position = Vector3.MoveTowards(transform.position, movePoint.position, moveSpeed * Time.deltaTime);
                }

                takingInput = true;
            }
        }
    }

    void MovePlayer()
    {
        
    }
}
