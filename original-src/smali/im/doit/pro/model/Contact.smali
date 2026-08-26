.class public Lim/doit/pro/model/Contact;
.super Lim/doit/pro/model/BaseEntity;
.source "Contact.java"


# static fields
.field public static final STATUS_PASSED:Ljava/lang/String; = "passed"

.field public static final STATUS_REJECT:Ljava/lang/String; = "reject"

.field public static final STATUS_WAITING:Ljava/lang/String; = "waiting"

.field private static final serialVersionUID:J = -0x531d1f6368eccd44L


# instance fields
.field private transient avatar:Landroid/graphics/Bitmap;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private avatarId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatar_id"
    .end annotation
.end field

.field private birthday:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private deleted:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private groupBy:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "group_by"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private notes:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private phone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private pos:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lim/doit/pro/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lim/doit/pro/model/Contact;->avatar:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAvatarId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lim/doit/pro/model/Contact;->avatarId:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lim/doit/pro/model/Contact;->birthday:Ljava/util/Calendar;

    return-object v0
.end method

.method public getDeleted()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lim/doit/pro/model/Contact;->deleted:Ljava/util/Calendar;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lim/doit/pro/model/Contact;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lim/doit/pro/model/Contact;->groupBy:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lim/doit/pro/model/Contact;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lim/doit/pro/model/Contact;->notes:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lim/doit/pro/model/Contact;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPos()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lim/doit/pro/model/Contact;->pos:J

    return-wide v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lim/doit/pro/model/Contact;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lim/doit/pro/model/Contact;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isPassed()Z
    .locals 2

    .prologue
    .line 159
    const-string v0, "passed"

    invoke-virtual {p0}, Lim/doit/pro/model/Contact;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAvatar(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "avatar"    # Landroid/graphics/Bitmap;

    .prologue
    .line 100
    iput-object p1, p0, Lim/doit/pro/model/Contact;->avatar:Landroid/graphics/Bitmap;

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Contact;->setChanged(Z)V

    .line 102
    return-void
.end method

.method public setAvatarId(Ljava/lang/String;)V
    .locals 1
    .param p1, "avatarId"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lim/doit/pro/model/Contact;->avatarId:Ljava/lang/String;

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Contact;->setChanged(Z)V

    .line 93
    return-void
.end method

.method public setBirthday(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "birthday"    # Ljava/util/Calendar;

    .prologue
    .line 127
    iput-object p1, p0, Lim/doit/pro/model/Contact;->birthday:Ljava/util/Calendar;

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Contact;->setChanged(Z)V

    .line 129
    return-void
.end method

.method public setDeleted(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "deleted"    # Ljava/util/Calendar;

    .prologue
    .line 154
    iput-object p1, p0, Lim/doit/pro/model/Contact;->deleted:Ljava/util/Calendar;

    .line 155
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Contact;->setChanged(Z)V

    .line 156
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lim/doit/pro/model/Contact;->email:Ljava/lang/String;

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Contact;->setChanged(Z)V

    .line 75
    return-void
.end method

.method public setGroupBy(Ljava/lang/String;)V
    .locals 1
    .param p1, "groupBy"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lim/doit/pro/model/Contact;->groupBy:Ljava/lang/String;

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Contact;->setChanged(Z)V

    .line 138
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lim/doit/pro/model/Contact;->name:Ljava/lang/String;

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Contact;->setChanged(Z)V

    .line 57
    return-void
.end method

.method public setNotes(Ljava/lang/String;)V
    .locals 1
    .param p1, "notes"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lim/doit/pro/model/Contact;->notes:Ljava/lang/String;

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Contact;->setChanged(Z)V

    .line 66
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 1
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lim/doit/pro/model/Contact;->phone:Ljava/lang/String;

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Contact;->setChanged(Z)V

    .line 120
    return-void
.end method

.method public setPos(J)V
    .locals 1
    .param p1, "pos"    # J

    .prologue
    .line 145
    iput-wide p1, p0, Lim/doit/pro/model/Contact;->pos:J

    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Contact;->setChanged(Z)V

    .line 147
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lim/doit/pro/model/Contact;->status:Ljava/lang/String;

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Contact;->setChanged(Z)V

    .line 111
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lim/doit/pro/model/Contact;->userId:Ljava/lang/String;

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Contact;->setChanged(Z)V

    .line 84
    return-void
.end method
