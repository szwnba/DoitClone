.class public Lim/doit/pro/model/TaskComment;
.super Lim/doit/pro/model/BaseTimestampsEntity;
.source "TaskComment.java"


# static fields
.field private static final serialVersionUID:J = -0x63356414bbb48630L


# instance fields
.field private author:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private authorEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "author_email"
    .end annotation
.end field

.field private content:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private hidden:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private repeatNo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "repeat_no"
    .end annotation
.end field

.field private task:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lim/doit/pro/model/BaseTimestampsEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public formatPostTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lim/doit/pro/model/TaskComment;->created:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lim/doit/pro/model/TaskComment;->created:Ljava/util/Calendar;

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->formatTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/model/TaskComment;->updated:Ljava/util/Calendar;

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->formatTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lim/doit/pro/model/TaskComment;->author:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "doit-local-user"

    :cond_0
    return-object v0
.end method

.method public getAuthorEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lim/doit/pro/model/TaskComment;->authorEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "myselfId"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string v0, ""

    .line 93
    .local v0, "auth":Ljava/lang/String;
    iget-object v2, p0, Lim/doit/pro/model/TaskComment;->author:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const v2, 0x7f0c01a9

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 96
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    iget-object v3, p0, Lim/doit/pro/model/TaskComment;->author:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/ContactDao;->findByUserId(Ljava/lang/String;)Lim/doit/pro/model/Contact;

    move-result-object v1

    .line 97
    .local v1, "contact":Lim/doit/pro/model/Contact;
    if-eqz v1, :cond_2

    .line 98
    invoke-virtual {v1}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_1
    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v1}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 100
    :cond_2
    iget-object v0, p0, Lim/doit/pro/model/TaskComment;->authorEmail:Ljava/lang/String;

    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lim/doit/pro/model/TaskComment;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getHidden()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lim/doit/pro/model/TaskComment;->hidden:Ljava/util/Calendar;

    return-object v0
.end method

.method public getRepeatNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lim/doit/pro/model/TaskComment;->repeatNo:Ljava/lang/String;

    return-object v0
.end method

.method public getTask()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lim/doit/pro/model/TaskComment;->task:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .param p1, "author"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lim/doit/pro/model/TaskComment;->author:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setAuthorEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "authorEmail"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lim/doit/pro/model/TaskComment;->authorEmail:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lim/doit/pro/model/TaskComment;->content:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setHidden(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "hidden"    # Ljava/util/Calendar;

    .prologue
    .line 81
    iput-object p1, p0, Lim/doit/pro/model/TaskComment;->hidden:Ljava/util/Calendar;

    .line 82
    return-void
.end method

.method public setRepeatNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lim/doit/pro/model/TaskComment;->repeatNo:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setTask(Ljava/lang/String;)V
    .locals 0
    .param p1, "task"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lim/doit/pro/model/TaskComment;->task:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TaskComment [content="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/doit/pro/model/TaskComment;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/TaskComment;->task:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repeatNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/TaskComment;->repeatNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", author="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/TaskComment;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authorEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lim/doit/pro/model/TaskComment;->authorEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/TaskComment;->hidden:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", completed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/TaskComment;->completed:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trashed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/TaskComment;->trashed:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", archived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/TaskComment;->archived:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lim/doit/pro/model/TaskComment;->deleted:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/TaskComment;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/TaskComment;->created:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/TaskComment;->updated:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lim/doit/pro/model/TaskComment;->usn:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
