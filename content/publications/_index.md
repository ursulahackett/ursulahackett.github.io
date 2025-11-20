---
title: Publications
type: landing
cms_exclude: true

sections:
  - block: collection
    id: books
    content:
      title: Books
      subtitle: ""
      filters:
        folders:
          - publications
        publication_type: "book"
        exclude_future: false
        exclude_past: false
      count: 0          # 0 = show all
      sort_by: "Date"
      sort_ascending: false
    design:
      view: citation
      columns: "1"
      spacing:
        padding: ["6rem", "0rem"]
  - block: collection
    id: journal-articles
    content:
      title: Journal articles
      subtitle: ""
      filters:
        folders:
          - publications
        publication_type: "article-journal"
        exclude_future: false
        exclude_past: false
      count: 0
      sort_by: "Date"
      sort_ascending: false
    design:
      view: citation
      columns: "1"
      spacing:
        padding: ["2rem", "0rem"]
  - block: collection
    id: chapter
    content:
      title: Chapters in edited volumes 
      subtitle: ""
      filters:
        folders:
          - publications
        publication_type: "chapter"
        exclude_future: false
        exclude_past: false
      count: 0
      sort_by: "Date"
      sort_ascending: false
    design:
      view: citation
      columns: "1"
      spacing:
        padding: ["2rem", "0rem"]    
  - block: collection
    id: edited-book
    content:
      title: Edited journal special issues 
      subtitle: ""
      filters:
        folders:
          - publications
        publication_type: "edited-book"
        exclude_future: false
        exclude_past: false
      count: 0
      sort_by: "Date"
      sort_ascending: false
    design:
      view: citation
      columns: "1"
      spacing:
        padding: ["2rem", "0rem"]    

---

