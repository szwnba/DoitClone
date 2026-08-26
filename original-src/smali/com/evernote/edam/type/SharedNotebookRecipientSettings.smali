.class public Lcom/evernote/edam/type/SharedNotebookRecipientSettings;
.super Ljava/lang/Object;
.source "SharedNotebookRecipientSettings.java"

# interfaces
.implements Lcom/evernote/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase",
        "<",
        "Lcom/evernote/edam/type/SharedNotebookRecipientSettings;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final REMINDER_NOTIFY_EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final REMINDER_NOTIFY_IN_APP_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final __REMINDERNOTIFYEMAIL_ISSET_ID:I = 0x0

.field private static final __REMINDERNOTIFYINAPP_ISSET_ID:I = 0x1


# instance fields
.field private __isset_vector:[Z

.field private reminderNotifyEmail:Z

.field private reminderNotifyInApp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 47
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "SharedNotebookRecipientSettings"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 49
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "reminderNotifyEmail"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->REMINDER_NOTIFY_EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 50
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "reminderNotifyInApp"

    invoke-direct {v0, v1, v3, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->REMINDER_NOTIFY_IN_APP_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->__isset_vector:[Z

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/SharedNotebookRecipientSettings;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->__isset_vector:[Z

    .line 68
    iget-object v0, p1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget-boolean v0, p1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    .line 70
    iget-boolean v0, p1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    .line 71
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->setReminderNotifyEmailIsSet(Z)V

    .line 79
    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    .line 80
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->setReminderNotifyInAppIsSet(Z)V

    .line 81
    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    .line 82
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/SharedNotebookRecipientSettings;)I
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    .prologue
    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    const/4 v0, 0x0

    .line 173
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 175
    .local v1, "typedOther":Lcom/evernote/edam/type/SharedNotebookRecipientSettings;
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyEmail()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyEmail()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 176
    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyEmail()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 180
    if-nez v0, :cond_0

    .line 184
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyInApp()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyInApp()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 185
    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyInApp()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 189
    if-nez v0, :cond_0

    .line 193
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->compareTo(Lcom/evernote/edam/type/SharedNotebookRecipientSettings;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/type/SharedNotebookRecipientSettings;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;-><init>(Lcom/evernote/edam/type/SharedNotebookRecipientSettings;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->deepCopy()Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/type/SharedNotebookRecipientSettings;)Z
    .locals 7
    .param p1, "that"    # Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    .prologue
    const/4 v4, 0x0

    .line 138
    if-nez p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v4

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyEmail()Z

    move-result v2

    .line 142
    .local v2, "this_present_reminderNotifyEmail":Z
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyEmail()Z

    move-result v0

    .line 143
    .local v0, "that_present_reminderNotifyEmail":Z
    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    .line 144
    :cond_2
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 146
    iget-boolean v5, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    iget-boolean v6, p1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    if-ne v5, v6, :cond_0

    .line 150
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyInApp()Z

    move-result v3

    .line 151
    .local v3, "this_present_reminderNotifyInApp":Z
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyInApp()Z

    move-result v1

    .line 152
    .local v1, "that_present_reminderNotifyInApp":Z
    if-nez v3, :cond_4

    if-eqz v1, :cond_5

    .line 153
    :cond_4
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 155
    iget-boolean v5, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    iget-boolean v6, p1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    if-ne v5, v6, :cond_0

    .line 159
    :cond_5
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 130
    if-nez p1, :cond_1

    .line 134
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 132
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    if-eqz v1, :cond_0

    .line 133
    check-cast p1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->equals(Lcom/evernote/edam/type/SharedNotebookRecipientSettings;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public isReminderNotifyEmail()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    return v0
.end method

.method public isReminderNotifyInApp()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    return v0
.end method

.method public isSetReminderNotifyEmail()Z
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetReminderNotifyInApp()Z
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 4
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 198
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 201
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 202
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 227
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 228
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->validate()V

    .line 229
    return-void

    .line 205
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 223
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 225
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 207
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_1

    .line 208
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    .line 209
    invoke-virtual {p0, v2}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->setReminderNotifyEmailIsSet(Z)V

    goto :goto_1

    .line 211
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 215
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v3, :cond_2

    .line 216
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    .line 217
    invoke-virtual {p0, v2}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->setReminderNotifyInAppIsSet(Z)V

    goto :goto_1

    .line 219
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setReminderNotifyEmail(Z)V
    .locals 1
    .param p1, "reminderNotifyEmail"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->setReminderNotifyEmailIsSet(Z)V

    .line 91
    return-void
.end method

.method public setReminderNotifyEmailIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 104
    return-void
.end method

.method public setReminderNotifyInApp(Z)V
    .locals 1
    .param p1, "reminderNotifyInApp"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->setReminderNotifyInAppIsSet(Z)V

    .line 113
    return-void
.end method

.method public setReminderNotifyInAppIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 125
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 126
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SharedNotebookRecipientSettings("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 254
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyEmail()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    const-string v2, "reminderNotifyEmail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget-boolean v2, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 257
    const/4 v0, 0x0

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyInApp()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_1
    const-string v2, "reminderNotifyInApp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-boolean v2, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 263
    const/4 v0, 0x0

    .line 265
    :cond_2
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public unsetReminderNotifyEmail()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->__isset_vector:[Z

    aput-boolean v1, v0, v1

    .line 95
    return-void
.end method

.method public unsetReminderNotifyInApp()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->__isset_vector:[Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 117
    return-void
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 271
    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 1
    .param p1, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->validate()V

    .line 234
    sget-object v0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 235
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyEmail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->REMINDER_NOTIFY_EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 237
    iget-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyEmail:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 238
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->isSetReminderNotifyInApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    sget-object v0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->REMINDER_NOTIFY_IN_APP_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 242
    iget-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->reminderNotifyInApp:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 243
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 245
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 246
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 247
    return-void
.end method
