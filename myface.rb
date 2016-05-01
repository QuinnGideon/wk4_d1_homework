class User

    def self.find(id)
        `psql -d wtf -c "SELECT * FROM users WHERE id = #{id}"`
    end

    def self.where(hash)
        `psql -d wtf -c "SELECT * FROM #{hash[:table]} WHERE #{hash[:col_name]} = '#{hash[:col_value]}'"`
    end

    def self.all
				`psql -d wtf -c "SELECT * FROM users"`

    def self.max
    		`psql -d wtf -c  "SELECT * FROM users where id = (SELECT max(id) FROM users)"`
    end

    def self.min
    		`psql -d wtf -c "SELECT * FROM users where id = (SELECT min(id) FROM users)"`
    end

end