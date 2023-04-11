import React from 'react';
import '../Blog/Blog.css'


const Blog = () => {
  const articles = [
    {
      title: "Забезпечення безпеки даних в інформаційній системі аудиторської компанії",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVDCYP4vRI1kTJLGt_Y0lCJPIPVhxmQE14Bw&usqp=CAU",
    },
    {
      title: "Як використовувати інформаційну систему для аналізу та звітування результатів аудиту",
      image: "https://i.pinimg.com/474x/5b/c9/2d/5bc92dfc200766bb913023576d270fc4.jpg",
    },
    {
      title: "Роль інформаційної системи в аудиторській компанії: переваги та виклики",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5D6D1lBVg7Q5Yy7ckAUCSYTLm5vIffGiCqg&usqp=CAU",
    },
  ];

  return (
    <div>
      <h1>Блог</h1>

      <section className="articles">
        {articles.map(({ title, image }, index) => (
          <a href="/" key={index}>
            <img src={image} alt={title} />
            <h2>{title}</h2>
          </a>
        ))}
      </section>

      <div className="sidebar">
        <h2>Популярні статті</h2>
        <ul>
          <li><a href="#">Lorem ipsum dolor sit amet</a></li>
          <li><a href="#">Consectetur adipiscing elit</a></li>
          <li><a href="#">Sed do eiusmod tempor incididunt</a></li>
        </ul>

        <h2>Популярні теги</h2>
        <ul>
          <li><a href="#">Audit</a></li>
          <li><a href="#">Tax</a></li>
          <li><a href="#">Consulting</a></li>
        </ul>

        <h2>Останні коментарі</h2>
        <ul>
          <li>John Doe on Lorem ipsum dolor sit amet</li>
          <li>Jane Smith on Consectetur adipiscing elit</li>
          <li>Bob Johnson on Sed do eiusmod tempor incididunt</li>
        </ul>
      </div>
    </div>
  )
};

export default Blog;