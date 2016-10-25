The image of issue in the Git data model.
Tree of blobs: Summary, Description, Status.
Create commit-tree. When issue is changed, create blobs of changed attributes. Create new tree with those blobs. On this tree create commit which is tied to previous commit on last change.
Summary - file with short definitive text.
Description - file with details on issue.
Status - file with 1 or 0; 1 when issue is resolved and 0 when issue is opened.

Current troubles:
How to track hash of our issue.
Possible solutions:
1)Use tags when commit trees. 
2)Tie issue to branch.
