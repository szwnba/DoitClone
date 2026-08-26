.class public Lcom/evernote/edam/type/SharedNotebook;
.super Ljava/lang/Object;
.source "SharedNotebook.java"

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
        "Lcom/evernote/edam/type/SharedNotebook;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final ALLOW_PREVIEW_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final NOTEBOOK_MODIFIABLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PRIVILEGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final RECIPIENT_SETTINGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final REQUIRE_LOGIN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SERVICE_CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SERVICE_UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SHARE_KEY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final USERNAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final USER_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final __ALLOWPREVIEW_ISSET_ID:I = 0x6

.field private static final __ID_ISSET_ID:I = 0x0

.field private static final __NOTEBOOKMODIFIABLE_ISSET_ID:I = 0x2

.field private static final __REQUIRELOGIN_ISSET_ID:I = 0x3

.field private static final __SERVICECREATED_ISSET_ID:I = 0x4

.field private static final __SERVICEUPDATED_ISSET_ID:I = 0x5

.field private static final __USERID_ISSET_ID:I = 0x1


# instance fields
.field private __isset_vector:[Z

.field private allowPreview:Z

.field private email:Ljava/lang/String;

.field private id:J

.field private notebookGuid:Ljava/lang/String;

.field private notebookModifiable:Z

.field private privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

.field private recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

.field private requireLogin:Z

.field private serviceCreated:J

.field private serviceUpdated:J

.field private shareKey:Ljava/lang/String;

.field private userId:I

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0x8

    const/16 v5, 0xa

    const/4 v4, 0x2

    const/16 v3, 0xb

    .line 81
    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "SharedNotebook"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    .line 83
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "id"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 84
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "userId"

    invoke-direct {v0, v1, v6, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->USER_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 85
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notebookGuid"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 86
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "email"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 87
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "notebookModifiable"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->NOTEBOOK_MODIFIABLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 88
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "requireLogin"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v4, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->REQUIRE_LOGIN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 89
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "serviceCreated"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v5, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->SERVICE_CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 90
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "serviceUpdated"

    invoke-direct {v0, v1, v5, v5}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->SERVICE_UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 91
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "shareKey"

    invoke-direct {v0, v1, v3, v6}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->SHARE_KEY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 92
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "username"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->USERNAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 93
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "privilege"

    invoke-direct {v0, v1, v6, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->PRIVILEGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 94
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "allowPreview"

    invoke-direct {v0, v1, v4, v7}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->ALLOW_PREVIEW_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    .line 95
    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "recipientSettings"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v7, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/SharedNotebook;->RECIPIENT_SETTINGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x7

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/SharedNotebook;)V
    .locals 4
    .param p1, "other"    # Lcom/evernote/edam/type/SharedNotebook;

    .prologue
    const/4 v3, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x7

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    .line 129
    iget-object v0, p1, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    iget-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    iget-object v2, p1, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    iget-wide v0, p1, Lcom/evernote/edam/type/SharedNotebook;->id:J

    iput-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->id:J

    .line 131
    iget v0, p1, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    iput v0, p0, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    .line 132
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookGuid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p1, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetEmail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p1, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    .line 138
    :cond_1
    iget-boolean v0, p1, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    .line 139
    iget-boolean v0, p1, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    .line 140
    iget-wide v0, p1, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    iput-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    .line 141
    iget-wide v0, p1, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    iput-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    .line 142
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetShareKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p1, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    .line 145
    :cond_2
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetUsername()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p1, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    .line 148
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetPrivilege()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 149
    iget-object v0, p1, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    .line 151
    :cond_4
    iget-boolean v0, p1, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    .line 152
    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetRecipientSettings()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    new-instance v0, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    iget-object v1, p1, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-direct {v0, v1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;-><init>(Lcom/evernote/edam/type/SharedNotebookRecipientSettings;)V

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    .line 155
    :cond_5
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebook;->setIdIsSet(Z)V

    .line 163
    iput-wide v2, p0, Lcom/evernote/edam/type/SharedNotebook;->id:J

    .line 164
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebook;->setUserIdIsSet(Z)V

    .line 165
    iput v0, p0, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    .line 166
    iput-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    .line 167
    iput-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    .line 168
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebook;->setNotebookModifiableIsSet(Z)V

    .line 169
    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    .line 170
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebook;->setRequireLoginIsSet(Z)V

    .line 171
    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    .line 172
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebook;->setServiceCreatedIsSet(Z)V

    .line 173
    iput-wide v2, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    .line 174
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebook;->setServiceUpdatedIsSet(Z)V

    .line 175
    iput-wide v2, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    .line 176
    iput-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    .line 177
    iput-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    .line 178
    iput-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    .line 179
    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebook;->setAllowPreviewIsSet(Z)V

    .line 180
    iput-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    .line 181
    iput-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    .line 182
    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/SharedNotebook;)I
    .locals 6
    .param p1, "other"    # Lcom/evernote/edam/type/SharedNotebook;

    .prologue
    .line 623
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 624
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

    .line 747
    :cond_0
    :goto_0
    return v0

    .line 627
    :cond_1
    const/4 v0, 0x0

    .line 628
    .local v0, "lastComparison":I
    move-object v1, p1

    .line 630
    .local v1, "typedOther":Lcom/evernote/edam/type/SharedNotebook;
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SharedNotebook;->isSetId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 631
    if-nez v0, :cond_0

    .line 634
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/evernote/edam/type/SharedNotebook;->id:J

    iget-wide v4, v1, Lcom/evernote/edam/type/SharedNotebook;->id:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 635
    if-nez v0, :cond_0

    .line 639
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetUserId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SharedNotebook;->isSetUserId()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 640
    if-nez v0, :cond_0

    .line 643
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetUserId()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    iget v3, v1, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(II)I

    move-result v0

    .line 644
    if-nez v0, :cond_0

    .line 648
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookGuid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookGuid()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 649
    if-nez v0, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookGuid()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 653
    if-nez v0, :cond_0

    .line 657
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetEmail()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SharedNotebook;->isSetEmail()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 658
    if-nez v0, :cond_0

    .line 661
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetEmail()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 662
    if-nez v0, :cond_0

    .line 666
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookModifiable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookModifiable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 667
    if-nez v0, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookModifiable()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 671
    if-nez v0, :cond_0

    .line 675
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetRequireLogin()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SharedNotebook;->isSetRequireLogin()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 676
    if-nez v0, :cond_0

    .line 679
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetRequireLogin()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 680
    if-nez v0, :cond_0

    .line 684
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceCreated()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceCreated()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 685
    if-nez v0, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceCreated()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-wide v2, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    iget-wide v4, v1, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 689
    if-nez v0, :cond_0

    .line 693
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceUpdated()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceUpdated()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 694
    if-nez v0, :cond_0

    .line 697
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceUpdated()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-wide v2, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    iget-wide v4, v1, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    invoke-static {v2, v3, v4, v5}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    .line 698
    if-nez v0, :cond_0

    .line 702
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetShareKey()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SharedNotebook;->isSetShareKey()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 703
    if-nez v0, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetShareKey()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 707
    if-nez v0, :cond_0

    .line 711
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetUsername()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SharedNotebook;->isSetUsername()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 712
    if-nez v0, :cond_0

    .line 715
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetUsername()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    iget-object v3, v1, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 716
    if-nez v0, :cond_0

    .line 720
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetPrivilege()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SharedNotebook;->isSetPrivilege()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 721
    if-nez v0, :cond_0

    .line 724
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetPrivilege()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    iget-object v3, v1, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 725
    if-nez v0, :cond_0

    .line 729
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetAllowPreview()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SharedNotebook;->isSetAllowPreview()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 730
    if-nez v0, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetAllowPreview()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-boolean v2, p0, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    iget-boolean v3, v1, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    .line 734
    if-nez v0, :cond_0

    .line 738
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetRecipientSettings()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/type/SharedNotebook;->isSetRecipientSettings()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 739
    if-nez v0, :cond_0

    .line 742
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetRecipientSettings()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    iget-object v3, v1, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-static {v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 743
    if-nez v0, :cond_0

    .line 747
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 80
    check-cast p1, Lcom/evernote/edam/type/SharedNotebook;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SharedNotebook;->compareTo(Lcom/evernote/edam/type/SharedNotebook;)I

    move-result v0

    return v0
.end method

.method public deepCopy()Lcom/evernote/edam/type/SharedNotebook;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/evernote/edam/type/SharedNotebook;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/SharedNotebook;-><init>(Lcom/evernote/edam/type/SharedNotebook;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->deepCopy()Lcom/evernote/edam/type/SharedNotebook;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/evernote/edam/type/SharedNotebook;)Z
    .locals 32
    .param p1, "that"    # Lcom/evernote/edam/type/SharedNotebook;

    .prologue
    .line 494
    if-nez p1, :cond_0

    .line 495
    const/16 v28, 0x0

    .line 614
    :goto_0
    return v28

    .line 497
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetId()Z

    move-result v17

    .line 498
    .local v17, "this_present_id":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetId()Z

    move-result v4

    .line 499
    .local v4, "that_present_id":Z
    if-nez v17, :cond_1

    if-eqz v4, :cond_4

    .line 500
    :cond_1
    if-eqz v17, :cond_2

    if-nez v4, :cond_3

    .line 501
    :cond_2
    const/16 v28, 0x0

    goto :goto_0

    .line 502
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/SharedNotebook;->id:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/SharedNotebook;->id:J

    move-wide/from16 v30, v0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_4

    .line 503
    const/16 v28, 0x0

    goto :goto_0

    .line 506
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetUserId()Z

    move-result v26

    .line 507
    .local v26, "this_present_userId":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetUserId()Z

    move-result v13

    .line 508
    .local v13, "that_present_userId":Z
    if-nez v26, :cond_5

    if-eqz v13, :cond_8

    .line 509
    :cond_5
    if-eqz v26, :cond_6

    if-nez v13, :cond_7

    .line 510
    :cond_6
    const/16 v28, 0x0

    goto :goto_0

    .line 511
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    .line 512
    const/16 v28, 0x0

    goto :goto_0

    .line 515
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookGuid()Z

    move-result v18

    .line 516
    .local v18, "this_present_notebookGuid":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookGuid()Z

    move-result v5

    .line 517
    .local v5, "that_present_notebookGuid":Z
    if-nez v18, :cond_9

    if-eqz v5, :cond_c

    .line 518
    :cond_9
    if-eqz v18, :cond_a

    if-nez v5, :cond_b

    .line 519
    :cond_a
    const/16 v28, 0x0

    goto :goto_0

    .line 520
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_c

    .line 521
    const/16 v28, 0x0

    goto :goto_0

    .line 524
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetEmail()Z

    move-result v16

    .line 525
    .local v16, "this_present_email":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetEmail()Z

    move-result v3

    .line 526
    .local v3, "that_present_email":Z
    if-nez v16, :cond_d

    if-eqz v3, :cond_10

    .line 527
    :cond_d
    if-eqz v16, :cond_e

    if-nez v3, :cond_f

    .line 528
    :cond_e
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 529
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_10

    .line 530
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 533
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookModifiable()Z

    move-result v19

    .line 534
    .local v19, "this_present_notebookModifiable":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookModifiable()Z

    move-result v6

    .line 535
    .local v6, "that_present_notebookModifiable":Z
    if-nez v19, :cond_11

    if-eqz v6, :cond_14

    .line 536
    :cond_11
    if-eqz v19, :cond_12

    if-nez v6, :cond_13

    .line 537
    :cond_12
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 538
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_14

    .line 539
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 542
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetRequireLogin()Z

    move-result v22

    .line 543
    .local v22, "this_present_requireLogin":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetRequireLogin()Z

    move-result v9

    .line 544
    .local v9, "that_present_requireLogin":Z
    if-nez v22, :cond_15

    if-eqz v9, :cond_18

    .line 545
    :cond_15
    if-eqz v22, :cond_16

    if-nez v9, :cond_17

    .line 546
    :cond_16
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 547
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_18

    .line 548
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 551
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceCreated()Z

    move-result v23

    .line 552
    .local v23, "this_present_serviceCreated":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceCreated()Z

    move-result v10

    .line 553
    .local v10, "that_present_serviceCreated":Z
    if-nez v23, :cond_19

    if-eqz v10, :cond_1c

    .line 554
    :cond_19
    if-eqz v23, :cond_1a

    if-nez v10, :cond_1b

    .line 555
    :cond_1a
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 556
    :cond_1b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    move-wide/from16 v30, v0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_1c

    .line 557
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 560
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceUpdated()Z

    move-result v24

    .line 561
    .local v24, "this_present_serviceUpdated":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceUpdated()Z

    move-result v11

    .line 562
    .local v11, "that_present_serviceUpdated":Z
    if-nez v24, :cond_1d

    if-eqz v11, :cond_20

    .line 563
    :cond_1d
    if-eqz v24, :cond_1e

    if-nez v11, :cond_1f

    .line 564
    :cond_1e
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 565
    :cond_1f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    move-wide/from16 v30, v0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_20

    .line 566
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 569
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetShareKey()Z

    move-result v25

    .line 570
    .local v25, "this_present_shareKey":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetShareKey()Z

    move-result v12

    .line 571
    .local v12, "that_present_shareKey":Z
    if-nez v25, :cond_21

    if-eqz v12, :cond_24

    .line 572
    :cond_21
    if-eqz v25, :cond_22

    if-nez v12, :cond_23

    .line 573
    :cond_22
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 574
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_24

    .line 575
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 578
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetUsername()Z

    move-result v27

    .line 579
    .local v27, "this_present_username":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetUsername()Z

    move-result v14

    .line 580
    .local v14, "that_present_username":Z
    if-nez v27, :cond_25

    if-eqz v14, :cond_28

    .line 581
    :cond_25
    if-eqz v27, :cond_26

    if-nez v14, :cond_27

    .line 582
    :cond_26
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 583
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_28

    .line 584
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 587
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetPrivilege()Z

    move-result v20

    .line 588
    .local v20, "this_present_privilege":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetPrivilege()Z

    move-result v7

    .line 589
    .local v7, "that_present_privilege":Z
    if-nez v20, :cond_29

    if-eqz v7, :cond_2c

    .line 590
    :cond_29
    if-eqz v20, :cond_2a

    if-nez v7, :cond_2b

    .line 591
    :cond_2a
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 592
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_2c

    .line 593
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 596
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetAllowPreview()Z

    move-result v15

    .line 597
    .local v15, "this_present_allowPreview":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetAllowPreview()Z

    move-result v2

    .line 598
    .local v2, "that_present_allowPreview":Z
    if-nez v15, :cond_2d

    if-eqz v2, :cond_30

    .line 599
    :cond_2d
    if-eqz v15, :cond_2e

    if-nez v2, :cond_2f

    .line 600
    :cond_2e
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 601
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_30

    .line 602
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 605
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetRecipientSettings()Z

    move-result v21

    .line 606
    .local v21, "this_present_recipientSettings":Z
    invoke-virtual/range {p1 .. p1}, Lcom/evernote/edam/type/SharedNotebook;->isSetRecipientSettings()Z

    move-result v8

    .line 607
    .local v8, "that_present_recipientSettings":Z
    if-nez v21, :cond_31

    if-eqz v8, :cond_34

    .line 608
    :cond_31
    if-eqz v21, :cond_32

    if-nez v8, :cond_33

    .line 609
    :cond_32
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 610
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->equals(Lcom/evernote/edam/type/SharedNotebookRecipientSettings;)Z

    move-result v28

    if-nez v28, :cond_34

    .line 611
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 614
    :cond_34
    const/16 v28, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 486
    if-nez p1, :cond_1

    .line 490
    .end local p1    # "that":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 488
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/evernote/edam/type/SharedNotebook;

    if-eqz v1, :cond_0

    .line 489
    check-cast p1, Lcom/evernote/edam/type/SharedNotebook;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/SharedNotebook;->equals(Lcom/evernote/edam/type/SharedNotebook;)Z

    move-result v0

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->id:J

    return-wide v0
.end method

.method public getNotebookGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivilege()Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    return-object v0
.end method

.method public getRecipientSettings()Lcom/evernote/edam/type/SharedNotebookRecipientSettings;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    return-object v0
.end method

.method public getServiceCreated()J
    .locals 2

    .prologue
    .line 319
    iget-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    return-wide v0
.end method

.method public getServiceUpdated()J
    .locals 2

    .prologue
    .line 341
    iget-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    return-wide v0
.end method

.method public getShareKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x0

    return v0
.end method

.method public isAllowPreview()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    return v0
.end method

.method public isNotebookModifiable()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    return v0
.end method

.method public isRequireLogin()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    return v0
.end method

.method public isSetAllowPreview()Z
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetEmail()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetId()Z
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetNotebookGuid()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetNotebookModifiable()Z
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetPrivilege()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetRecipientSettings()Z
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetRequireLogin()Z
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetServiceCreated()Z
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetServiceUpdated()Z
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetShareKey()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetUserId()Z
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isSetUsername()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 9
    .param p1, "iprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    const/16 v7, 0xa

    const/4 v6, 0x2

    const/16 v5, 0xb

    const/4 v4, 0x1

    .line 752
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    .line 755
    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    .line 756
    .local v0, "field":Lcom/evernote/thrift/protocol/TField;
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    .line 864
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    .line 865
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->validate()V

    .line 866
    return-void

    .line 759
    :cond_0
    iget-short v1, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    packed-switch v1, :pswitch_data_0

    .line 860
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    .line 862
    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto :goto_0

    .line 761
    :pswitch_0
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v7, :cond_1

    .line 762
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/edam/type/SharedNotebook;->id:J

    .line 763
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/SharedNotebook;->setIdIsSet(Z)V

    goto :goto_1

    .line 765
    :cond_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 769
    :pswitch_1
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v8, :cond_2

    .line 770
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    iput v1, p0, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    .line 771
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/SharedNotebook;->setUserIdIsSet(Z)V

    goto :goto_1

    .line 773
    :cond_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 777
    :pswitch_2
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_3

    .line 778
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    goto :goto_1

    .line 780
    :cond_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 784
    :pswitch_3
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_4

    .line 785
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    goto :goto_1

    .line 787
    :cond_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 791
    :pswitch_4
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_5

    .line 792
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    .line 793
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/SharedNotebook;->setNotebookModifiableIsSet(Z)V

    goto :goto_1

    .line 795
    :cond_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 799
    :pswitch_5
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_6

    .line 800
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    .line 801
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/SharedNotebook;->setRequireLoginIsSet(Z)V

    goto :goto_1

    .line 803
    :cond_6
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    .line 807
    :pswitch_6
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v7, :cond_7

    .line 808
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    .line 809
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/SharedNotebook;->setServiceCreatedIsSet(Z)V

    goto/16 :goto_1

    .line 811
    :cond_7
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 815
    :pswitch_7
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v7, :cond_8

    .line 816
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    .line 817
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/SharedNotebook;->setServiceUpdatedIsSet(Z)V

    goto/16 :goto_1

    .line 819
    :cond_8
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 823
    :pswitch_8
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_9

    .line 824
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 826
    :cond_9
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 830
    :pswitch_9
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v5, :cond_a

    .line 831
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    goto/16 :goto_1

    .line 833
    :cond_a
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 837
    :pswitch_a
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v8, :cond_b

    .line 838
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v1

    invoke-static {v1}, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;->findByValue(I)Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    goto/16 :goto_1

    .line 840
    :cond_b
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 844
    :pswitch_b
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-ne v1, v6, :cond_c

    .line 845
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    .line 846
    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/SharedNotebook;->setAllowPreviewIsSet(Z)V

    goto/16 :goto_1

    .line 848
    :cond_c
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 852
    :pswitch_c
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_d

    .line 853
    new-instance v1, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-direct {v1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;-><init>()V

    iput-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    .line 854
    iget-object v1, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-virtual {v1, p1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->read(Lcom/evernote/thrift/protocol/TProtocol;)V

    goto/16 :goto_1

    .line 856
    :cond_d
    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    .line 759
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public setAllowPreview(Z)V
    .locals 1
    .param p1, "allowPreview"    # Z

    .prologue
    .line 444
    iput-boolean p1, p0, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    .line 445
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebook;->setAllowPreviewIsSet(Z)V

    .line 446
    return-void
.end method

.method public setAllowPreviewIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 458
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v1, 0x6

    aput-boolean p1, v0, v1

    .line 459
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setEmailIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    .line 272
    :cond_0
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/evernote/edam/type/SharedNotebook;->id:J

    .line 190
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebook;->setIdIsSet(Z)V

    .line 191
    return-void
.end method

.method public setIdIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 203
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 204
    return-void
.end method

.method public setNotebookGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "notebookGuid"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setNotebookGuidIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    .line 249
    :cond_0
    return-void
.end method

.method public setNotebookModifiable(Z)V
    .locals 1
    .param p1, "notebookModifiable"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    .line 280
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebook;->setNotebookModifiableIsSet(Z)V

    .line 281
    return-void
.end method

.method public setNotebookModifiableIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 293
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v1, 0x2

    aput-boolean p1, v0, v1

    .line 294
    return-void
.end method

.method public setPrivilege(Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;)V
    .locals 0
    .param p1, "privilege"    # Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    .line 422
    return-void
.end method

.method public setPrivilegeIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 434
    if-nez p1, :cond_0

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    .line 437
    :cond_0
    return-void
.end method

.method public setRecipientSettings(Lcom/evernote/edam/type/SharedNotebookRecipientSettings;)V
    .locals 0
    .param p1, "recipientSettings"    # Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    .line 467
    return-void
.end method

.method public setRecipientSettingsIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 479
    if-nez p1, :cond_0

    .line 480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    .line 482
    :cond_0
    return-void
.end method

.method public setRequireLogin(Z)V
    .locals 1
    .param p1, "requireLogin"    # Z

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    .line 302
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebook;->setRequireLoginIsSet(Z)V

    .line 303
    return-void
.end method

.method public setRequireLoginIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 315
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v1, 0x3

    aput-boolean p1, v0, v1

    .line 316
    return-void
.end method

.method public setServiceCreated(J)V
    .locals 1
    .param p1, "serviceCreated"    # J

    .prologue
    .line 323
    iput-wide p1, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    .line 324
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebook;->setServiceCreatedIsSet(Z)V

    .line 325
    return-void
.end method

.method public setServiceCreatedIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 337
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v1, 0x4

    aput-boolean p1, v0, v1

    .line 338
    return-void
.end method

.method public setServiceUpdated(J)V
    .locals 1
    .param p1, "serviceUpdated"    # J

    .prologue
    .line 345
    iput-wide p1, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    .line 346
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebook;->setServiceUpdatedIsSet(Z)V

    .line 347
    return-void
.end method

.method public setServiceUpdatedIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 359
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v1, 0x5

    aput-boolean p1, v0, v1

    .line 360
    return-void
.end method

.method public setShareKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareKey"    # Ljava/lang/String;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setShareKeyIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 380
    if-nez p1, :cond_0

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    .line 383
    :cond_0
    return-void
.end method

.method public setUserId(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 211
    iput p1, p0, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    .line 212
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/SharedNotebook;->setUserIdIsSet(Z)V

    .line 213
    return-void
.end method

.method public setUserIdIsSet(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 225
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 226
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public setUsernameIsSet(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 403
    if-nez p1, :cond_0

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    .line 406
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SharedNotebook("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 956
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 958
    .local v0, "first":Z
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 959
    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    iget-wide v2, p0, Lcom/evernote/edam/type/SharedNotebook;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 961
    const/4 v0, 0x0

    .line 963
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetUserId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 964
    if-nez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    :cond_1
    const-string v2, "userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    iget v2, p0, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 967
    const/4 v0, 0x0

    .line 969
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookGuid()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 970
    if-nez v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    :cond_3
    const-string v2, "notebookGuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    iget-object v2, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    if-nez v2, :cond_19

    .line 973
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    :goto_0
    const/4 v0, 0x0

    .line 979
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetEmail()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 980
    if-nez v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    :cond_5
    const-string v2, "email:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    iget-object v2, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    if-nez v2, :cond_1a

    .line 983
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    :goto_1
    const/4 v0, 0x0

    .line 989
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookModifiable()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 990
    if-nez v0, :cond_7

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    :cond_7
    const-string v2, "notebookModifiable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    iget-boolean v2, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 993
    const/4 v0, 0x0

    .line 995
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetRequireLogin()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 996
    if-nez v0, :cond_9

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    :cond_9
    const-string v2, "requireLogin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    iget-boolean v2, p0, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 999
    const/4 v0, 0x0

    .line 1001
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceCreated()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1002
    if-nez v0, :cond_b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    :cond_b
    const-string v2, "serviceCreated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    iget-wide v2, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1005
    const/4 v0, 0x0

    .line 1007
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceUpdated()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1008
    if-nez v0, :cond_d

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    :cond_d
    const-string v2, "serviceUpdated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    iget-wide v2, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1011
    const/4 v0, 0x0

    .line 1013
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetShareKey()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1014
    if-nez v0, :cond_f

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    :cond_f
    const-string v2, "shareKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    iget-object v2, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    if-nez v2, :cond_1b

    .line 1017
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    :goto_2
    const/4 v0, 0x0

    .line 1023
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetUsername()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1024
    if-nez v0, :cond_11

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    :cond_11
    const-string v2, "username:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    iget-object v2, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    if-nez v2, :cond_1c

    .line 1027
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    :goto_3
    const/4 v0, 0x0

    .line 1033
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetPrivilege()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1034
    if-nez v0, :cond_13

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    :cond_13
    const-string v2, "privilege:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    iget-object v2, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    if-nez v2, :cond_1d

    .line 1037
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    :goto_4
    const/4 v0, 0x0

    .line 1043
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetAllowPreview()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1044
    if-nez v0, :cond_15

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    :cond_15
    const-string v2, "allowPreview:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    iget-boolean v2, p0, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1047
    const/4 v0, 0x0

    .line 1049
    :cond_16
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetRecipientSettings()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1050
    if-nez v0, :cond_17

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    :cond_17
    const-string v2, "recipientSettings:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    iget-object v2, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    if-nez v2, :cond_1e

    .line 1053
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    :goto_5
    const/4 v0, 0x0

    .line 1059
    :cond_18
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 975
    :cond_19
    iget-object v2, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 985
    :cond_1a
    iget-object v2, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1019
    :cond_1b
    iget-object v2, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1029
    :cond_1c
    iget-object v2, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1039
    :cond_1d
    iget-object v2, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1055
    :cond_1e
    iget-object v2, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public unsetAllowPreview()V
    .locals 3

    .prologue
    .line 449
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 450
    return-void
.end method

.method public unsetEmail()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public unsetId()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    aput-boolean v1, v0, v1

    .line 195
    return-void
.end method

.method public unsetNotebookGuid()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public unsetNotebookModifiable()V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 285
    return-void
.end method

.method public unsetPrivilege()V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    .line 426
    return-void
.end method

.method public unsetRecipientSettings()V
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    .line 471
    return-void
.end method

.method public unsetRequireLogin()V
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 307
    return-void
.end method

.method public unsetServiceCreated()V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 329
    return-void
.end method

.method public unsetServiceUpdated()V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 351
    return-void
.end method

.method public unsetShareKey()V
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public unsetUserId()V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->__isset_vector:[Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 217
    return-void
.end method

.method public unsetUsername()V
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    .line 395
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
    .line 1065
    return-void
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 2
    .param p1, "oprot"    # Lcom/evernote/thrift/protocol/TProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->validate()V

    .line 871
    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    .line 872
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 874
    iget-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->id:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 875
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 877
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetUserId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->USER_ID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 879
    iget v0, p0, Lcom/evernote/edam/type/SharedNotebook;->userId:I

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 880
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 882
    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 883
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 884
    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->NOTEBOOK_GUID_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 885
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookGuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 886
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 889
    :cond_2
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 890
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetEmail()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 891
    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->EMAIL_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 892
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 896
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetNotebookModifiable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 897
    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->NOTEBOOK_MODIFIABLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 898
    iget-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->notebookModifiable:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 899
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 901
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetRequireLogin()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 902
    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->REQUIRE_LOGIN_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 903
    iget-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->requireLogin:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 904
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 906
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceCreated()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 907
    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->SERVICE_CREATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 908
    iget-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceCreated:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 909
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 911
    :cond_6
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 912
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetShareKey()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 913
    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->SHARE_KEY_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 914
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->shareKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 915
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 918
    :cond_7
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 919
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetUsername()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 920
    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->USERNAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 921
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    .line 922
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 925
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetServiceUpdated()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 926
    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->SERVICE_UPDATED_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 927
    iget-wide v0, p0, Lcom/evernote/edam/type/SharedNotebook;->serviceUpdated:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    .line 928
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 930
    :cond_9
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    if-eqz v0, :cond_a

    .line 931
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetPrivilege()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 932
    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->PRIVILEGE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 933
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->privilege:Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;

    invoke-virtual {v0}, Lcom/evernote/edam/type/SharedNotebookPrivilegeLevel;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    .line 934
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 937
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetAllowPreview()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 938
    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->ALLOW_PREVIEW_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 939
    iget-boolean v0, p0, Lcom/evernote/edam/type/SharedNotebook;->allowPreview:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    .line 940
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 942
    :cond_b
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    if-eqz v0, :cond_c

    .line 943
    invoke-virtual {p0}, Lcom/evernote/edam/type/SharedNotebook;->isSetRecipientSettings()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 944
    sget-object v0, Lcom/evernote/edam/type/SharedNotebook;->RECIPIENT_SETTINGS_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    .line 945
    iget-object v0, p0, Lcom/evernote/edam/type/SharedNotebook;->recipientSettings:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-virtual {v0, p1}, Lcom/evernote/edam/type/SharedNotebookRecipientSettings;->write(Lcom/evernote/thrift/protocol/TProtocol;)V

    .line 946
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    .line 949
    :cond_c
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    .line 950
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    .line 951
    return-void
.end method
