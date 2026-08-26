.class public Lim/doit/pro/model/Notice;
.super Lim/doit/pro/model/BaseEntity;
.source "Notice.java"


# static fields
.field private static final serialVersionUID:J = -0x8eea26fb94bebbdL


# instance fields
.field private body:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private comment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private deleted:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private forcePopup:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "force_popup"
    .end annotation
.end field

.field private noticeType:Lim/doit/pro/model/enums/NoticeType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notice_type"
    .end annotation
.end field

.field private read:Ljava/util/Calendar;
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

.field private result:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private sender:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private senderEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sender_email"
    .end annotation
.end field

.field private senderNickname:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sender_nickname"
    .end annotation
.end field

.field private targetId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "target_id"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lim/doit/pro/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lim/doit/pro/model/Notice;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lim/doit/pro/model/Notice;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleted()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lim/doit/pro/model/Notice;->deleted:Ljava/util/Calendar;

    return-object v0
.end method

.method public getNoticeType()Lim/doit/pro/model/enums/NoticeType;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lim/doit/pro/model/Notice;->noticeType:Lim/doit/pro/model/enums/NoticeType;

    return-object v0
.end method

.method public getRead()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lim/doit/pro/model/Notice;->read:Ljava/util/Calendar;

    return-object v0
.end method

.method public getRepeatNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lim/doit/pro/model/Notice;->repeatNo:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lim/doit/pro/model/Notice;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lim/doit/pro/model/Notice;->sender:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lim/doit/pro/model/Notice;->senderEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lim/doit/pro/model/Notice;->senderNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lim/doit/pro/model/Notice;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lim/doit/pro/model/Notice;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isForcePopup()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lim/doit/pro/model/Notice;->forcePopup:Z

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lim/doit/pro/model/Notice;->body:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lim/doit/pro/model/Notice;->comment:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setDeleted(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "deleted"    # Ljava/util/Calendar;

    .prologue
    .line 150
    iput-object p1, p0, Lim/doit/pro/model/Notice;->deleted:Ljava/util/Calendar;

    .line 151
    return-void
.end method

.method public setForcePopup(Z)V
    .locals 0
    .param p1, "forcePopup"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lim/doit/pro/model/Notice;->forcePopup:Z

    .line 87
    return-void
.end method

.method public setNoticeType(Lim/doit/pro/model/enums/NoticeType;)V
    .locals 0
    .param p1, "noticeType"    # Lim/doit/pro/model/enums/NoticeType;

    .prologue
    .line 54
    iput-object p1, p0, Lim/doit/pro/model/Notice;->noticeType:Lim/doit/pro/model/enums/NoticeType;

    .line 55
    return-void
.end method

.method public setRead(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "read"    # Ljava/util/Calendar;

    .prologue
    .line 142
    iput-object p1, p0, Lim/doit/pro/model/Notice;->read:Ljava/util/Calendar;

    .line 143
    return-void
.end method

.method public setRepeatNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lim/doit/pro/model/Notice;->repeatNo:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lim/doit/pro/model/Notice;->result:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setSender(Ljava/lang/String;)V
    .locals 0
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lim/doit/pro/model/Notice;->sender:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setSenderEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderEmail"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lim/doit/pro/model/Notice;->senderEmail:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setSenderNickname(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderNickname"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lim/doit/pro/model/Notice;->senderNickname:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetId"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lim/doit/pro/model/Notice;->targetId:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lim/doit/pro/model/Notice;->title:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Notice [noticeType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/doit/pro/model/Notice;->noticeType:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Notice;->targetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repeatNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Notice;->repeatNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Notice;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forcePopup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    iget-boolean v1, p0, Lim/doit/pro/model/Notice;->forcePopup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Notice;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Notice;->sender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", senderEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Notice;->senderEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", senderNickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Notice;->senderNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Notice;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Notice;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", read="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Notice;->read:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Notice;->deleted:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
