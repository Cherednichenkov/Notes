using System;
using System.Linq;
using System.Data.Entity;
using System.Collections.Generic;
using System.Web.UI.WebControls;
using System.ComponentModel.DataAnnotations;

namespace Notes
{
    public partial class Default : System.Web.UI.Page
    {
        // В этом поле хранится информация о базе данных
        Model1Container dbContext;

        protected void Page_Load(object sender, EventArgs e)
        {
            dbContext = new Model1Container();
            ListView1.InsertItemPosition = InsertItemPosition.LastItem;
        }

        // Отобразить все заметки
        public IQueryable<Konsom_Notes> GetKonsom_Notes()
        {
            // Используем LINQ-запрос для извлечения данных
            return dbContext.Konsom_NotesSet.AsQueryable<Konsom_Notes>();
        }

        // Редактировать данные заметки
        public void EditKonsom_Notes(int? Id_Notes)
        {
            Konsom_Notes konsom_notes = dbContext.Konsom_NotesSet
                .Where(c => c.Id_Notes == Id_Notes).FirstOrDefault();

            if (konsom_notes != null && TryUpdateModel<Konsom_Notes>(konsom_notes))
            {
                // Обновить данные в БД с помощью Entity Framework
                dbContext.Entry<Konsom_Notes>(konsom_notes).State = EntityState.Modified;
                dbContext.SaveChanges();
            }
        }

        // Удалить заметки
        public void DeleteKonsom_Notes()
        {
            Konsom_Notes konsom_notes = new Konsom_Notes();

            if (TryUpdateModel<Konsom_Notes>(konsom_notes))
            {
                dbContext.Entry<Konsom_Notes>(konsom_notes).State = EntityState.Deleted;
                dbContext.SaveChanges();
            }
        }

        // Вставить новые заметки
        public void InsertKonsom_Notes()
        {
            Konsom_Notes konsom_notes = new Konsom_Notes();

            if (TryUpdateModel<Konsom_Notes>(konsom_notes))
            {
                konsom_notes.Date = DateTime.Now;
                dbContext.Konsom_NotesSet.Add(konsom_notes);
                dbContext.SaveChanges();
            }
        }
    }
}